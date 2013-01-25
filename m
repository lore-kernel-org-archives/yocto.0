Return-Path: <daniel.schnel.extern@ifm.com>
Received: from eu3sys201aog103.obsmtp.com (eu3sys201aog103.obsmtp.com
	[207.126.148.89])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 98185E0150D
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 04:53:41 -0800 (PST)
Received: from deesdmz227.dmz.es.de.ifm ([194.156.152.227]) (using TLSv1) by
	eu3sys201aob103.postini.com ([207.126.154.11]) with SMTP
	ID DSNKUQKAU1Xn6XkaMYXaNxhqN/9B0iVGwew/@postini.com;
	Fri, 25 Jan 2013 12:53:41 UTC
Received: from deesdmz227.dmz.es.de.ifm (localhost.localdomain [127.0.0.1])
	by deesdmz227.dmz.es.de.ifm (Postfix) with ESMTP id ADF5C813FA2
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 13:53:39 +0100 (CET)
In-Reply-To: <alpine.DEB.2.02.1301250359530.7311@oneiric>
References: <OFBE0EFB03.95C8CD96-ONC1257AFD.00580557-C1257AFD.00584DE3@ifm-electronic.com>
	<alpine.DEB.2.02.1301241412340.6204@oneiric>	<OF78A692B9.437116F7-ONC1257AFE.00288F32-C1257AFE.0030603B@ifm-electronic.com>
	<alpine.DEB.2.02.1301250359530.7311@oneiric>
X-KeepSent: 5D5988A2:0765F143-C1257AFE:003AB68F;
 type=4; name=$KeepSent
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Mailer: Lotus Notes Release 8.5.2FP3 July 11, 2011
From: daniel.schnel.extern@ifm.com
Message-ID: <OF5D5988A2.0765F143-ONC1257AFE.003AB68F-C1257AFE.0046B882@ifm-electronic.com>
Date: Fri, 25 Jan 2013 13:52:27 +0100
X-MIMETrack: Serialize by Router on deesifmweb04/ifmwww(Release 8.5.2HF17 |
	August 31, 2010) at 25.01.2013 13:53:38
MIME-Version: 1.0
X-SafeGuard_MailGateway: Version: 5.80.2.12968 SGMG_SOPHOS Date:
	20130125125339Z
Cc: yocto@yoctoproject.org
Subject: Antwort: Re: Antwort: Re: PREMIRRORS_prepend & friends
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 25 Jan 2013 12:53:42 -0000
Content-type: text/plain; charset=US-ASCII



yocto-bounces@yoctoproject.org schrieb am 25.01.2013 10:06:14:

> Von: "Robert P. J. Day" <rpjday@crashcourse.ca>
> An: daniel.schnel.extern@ifm.com
> Kopie: yocto@yoctoproject.org
> Datum: 25.01.2013 11:35
> Betreff: Re: [yocto] Antwort: Re:  PREMIRRORS_prepend & friends
> Gesendet von: yocto-bounces@yoctoproject.org
>
> On Fri, 25 Jan 2013, daniel.schnel.extern@ifm.com wrote:
>
> > Von:   "Robert P. J. Day" <rpjday@crashcourse.ca>
> > An:   daniel.schnel.extern@ifm.com
> > Kopie:   yocto@yoctoproject.org
> > Datum:   24.01.2013 21:47
> > Betreff:   Re: [yocto] PREMIRRORS_prepend & friends
> > Gesendet von:   yocto-bounces@yoctoproject.org
> >
> >
> >
> > On Thu, 24 Jan 2013, daniel.schnel.extern@ifm.com wrote:
> >
> > >
> > > Hi,
> > >
> > > after hours of trying and googling I finally make my first coming out
> > here
> > > on this list to get some help with PREMIRRORS_prepend & friends.So
please
> > > be friendly ;)
> > >
> > > I want to setup local mirrors for our yocto build for reproducability
> > > purposes. I am using ELDK-5.2.1 which is based on yocto-1.2
> > >
> > > I have made the following settings in my local.conf:
> > >
> > > PREMIRRORS_prepend = "\
> > >      git://.*/.*   git://git@dettlx79: \n \
> > >      ftp://.*/.* http://dettlx79/sources \n \
> > >      http://.*/.* http://dettlx79/sources \n \
> > >      https://.*/.* http://dettlx79/sources \n \"
> > >
> > >
> > > BB_FETCH_PREMIRRORONLY = "1"
> >
> >   ... snip ...
> >
> > i documented how i set up my own local mirror here:
> >
> >
http://www.crashcourse.ca/wiki/index.php/OE_Creating_your_%22own_mirror%22
> >
> > it's all based on eventually storing tarballs of the sources, no
> > matter how you fetched the original sources.  is that what you're
> > after for reproducibility?
> >
> >
> >
> > We want to guarantee even after +5 years or so that the bits of our
> > binaries are the same whenever we hit the build trigger. In my eyes
> > this can only be achieved if the sources are archived via revision
> > control system, because otherwise we would be dependent on archives
> > and their filename always staying unmodified over time. This is a
> > policy outside of our realm and so a revision control system would
> > get this straight.
>
>   that makes no sense to me.  what could be more reliable than keeping
> your own copies of the relevant tarballs to guarantee that you always
> use exactly the same source for every build?  how does leaving that
> source in a revision control system make it any more reproducible?
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

For clarification: I mean to check in the source packages themselves into
revision control not the expanded package sources !

This has to do with reproducability not only from my own PC but from the
point of view of a central build server like Jenkins or for a number of
developers all over the world working on the same or similar project.

Say you have a certain revision of your image which is 5 years old. In the
meanwhile we could have yocto 3.4 (or maybe then no yocto any more ...) so
nobody remembers then the gory details of yocto-1.2 at that time and the
original source code archives may have long disappeared from their original
internet servers. One might find an equally named package somewhere else,
but who guarantees that it contains the same contents than the original?
A solution could be to place all the gazillion of packages one maybe needs
in those next 5 years on a central file/apache server. Let's say there is a
hw issue, a file corruption of one or several packages, or some human
mistake happens - say after 2 years - but the backup plan has a max.
retention of, say, 2 years, then you might not be able to reproduce the
build from 5 years ago. Who should notice that a package is corrupt/missing
if no build ever happens in the meanwhile that depends on exactly that
particular package ?

This cannot happen, if you put all packages in revision control and give
the revision a meaningful tag. Then you can always refere to that tag and
check out the archives that were valid when this 5 years old build has been
done. Repositories are constantly used. If some repository corruption
occurs, one notices immediately and can take action immediately. Moreover
if any change to a package has been done one can track these changes. It's
a much safer way to guarantee long term availability and traceability.

My question is: how to do this in the most efficient and straight forward
way with yocto ? How could I use PREMIRRORS to clone from my internal git
servers instead of e.g. kernel.org ?
As I understand the source packages themselves are only accessible via
either http:// or file:// protocol, right ? So if I would place these
inside version control, I would have to check these out at the appropriate
place first, correct?

Regards,
Daniel Schnell.



