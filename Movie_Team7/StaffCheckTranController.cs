using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Team7
{
    public class StaffCheckTranController
    {

        SMB_team7_dbEntities2 ctx = new SMB_team7_dbEntities2();
        TransViw view = new TransViw();
        BookingInfo book=new BookingInfo();
        String errmsg;
        //public List<BookingInfo> findMember()
        //{
          
        //    var query =
        //          from p in ctx.BookingInfoes
        //          group p by p.memberID into mg
        //          select new { MemberID = mg.Key, NoofTicket = mg.Sum(p => p.noOfTicket), TotalPrice = mg.Sum(p => p.totalPrice) };

        //    return query;
        //   // List<BookingInfo> binfo = query.ToList<BookingInfo>
        //}

        public List<TransViw> findRecord(int bookingID)
        {


            var query = from x in ctx.TransViws

                        where x.bookingID == bookingID


                        select x;

            List<TransViw> binfo = query.ToList<TransViw>();  
            
            return binfo;        
            
            
        }

        public String MyValidate(int bookingID)
        {
            List<TransViw> t =findRecord(bookingID);
            errmsg = "";
            if (t.Count == 0)
            {
                errmsg = "Not a valid BookingID";
                return errmsg;
            }
            return errmsg;
        }


        //public String MyValidateMovie(String movie)
        //{
        //    List<TransViw> t = findMovieRecord(movie);
        //    errmsg = "";
        //    if (t.Count == 0)
        //    {
        //        errmsg = "Not a valid MovieName";
        //        return errmsg;
        //    }
        //    return errmsg;
        //}


        public List<TransViw> findMovieRecord(String movie)
        {
            var query = from x in ctx.TransViws
                        where x.movieName == movie
                        select x;
            List<TransViw> binfo = query.ToList<TransViw>();

            return binfo;        

        }
        public List<TransViw> findCinemaRecord(String cinema) 
        {
            var query = from x in ctx.TransViws
                        where x.cinemaName == cinema
                        select x;
            List<TransViw> binfo = query.ToList<TransViw>();

            return binfo;

        }
        public List<TransViw> findRecordall(String movie, String cinema, String date,int timeslot)
        {
            var query = from x in ctx.TransViws
                        where x.cinemaName == cinema && x.movieName==movie && x.date==date && x.timeslot==timeslot 
                        select x;
            List<TransViw> binfo = query.ToList<TransViw>();

            return binfo;

        }
        
         
    }
}