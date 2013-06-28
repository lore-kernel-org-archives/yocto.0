Return-Path: <djnass_18@hotmail.com>
Received: from dub0-omc4-s14.dub0.hotmail.com (dub0-omc4-s14.dub0.hotmail.com
	[157.55.2.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93365E014F4
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 03:56:55 -0700 (PDT)
Received: from DUB116-W44 ([157.55.2.73]) by dub0-omc4-s14.dub0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 28 Jun 2013 03:56:53 -0700
X-TMN: [XXE6NK0xYV+CNm8Q1+4CMisSS1+NtQKLB6ppFpNljVY=]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB116-W4455FCE7AB88E3B8A9F06698760@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>,
	=?iso-8859-1?B?RXJpYyBC6W5hcmQ=?= <eric@eukrea.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 28 Jun 2013 10:56:53 +0000
Importance: Normal
In-Reply-To: <CAFMfyz+JwrUL_CYEnq76PF7KhyxuBiz8hNkuqBm0renUQVn4ng@mail.gmail.com>
References: <CAFMfyzL4zn208FJUOsBq8ZqCU3RejEJ0F8-XzEDVf0xSrGGWrw@mail.gmail.com>,
	<20130627164019.133ccec1@e6520eb>
	<20130627164803.09187edf@e6520eb>,
	<CAFMfyz+JwrUL_CYEnq76PF7KhyxuBiz8hNkuqBm0renUQVn4ng@mail.gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 28 Jun 2013 10:56:53.0637 (UTC)
	FILETIME=[330F3B50:01CE73EE]
Subject: Re: Qt4 - qmake in toolchain for Qt/X11
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Jun 2013 10:56:56 -0000
Content-Type: multipart/alternative;
	boundary="_9eb44c6a-398f-4a79-84dc-f82b37db9d8c_"

--_9eb44c6a-398f-4a79-84dc-f82b37db9d8c_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

If I am not mistaken you can do:
    bitbake meta-toolchain-qte

then you'll get a toolchain with qmake.

Date: Fri=2C 28 Jun 2013 08:41:41 +0200
From: satyaswaroop.damarla@gmail.com
To: eric@eukrea.com=3B yocto@yoctoproject.org
Subject: Re: [yocto] Qt4 - qmake in toolchain for Qt/X11

Hi Eric=2C
Can you explain how does that work.. I develop an application on qte and it=
 works on qt/x11... Is it because qt is cross-platform compatible...
Greets=2C=0A=
Sati

On Thu=2C Jun 27=2C 2013 at 4:48 PM=2C Eric B=E9nard <eric@eukrea.com> wrot=
e:
=0A=
Le Thu=2C 27 Jun 2013 16:40:19 +0200=2C
=0A=
Eric B=E9nard <eric@eukrea.com> a =E9crit :
=0A=

=0A=
> Hi=2C
=0A=
>
=0A=
> Le Thu=2C 27 Jun 2013 11:01:11 +0200=2C
=0A=
> DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com> a =E9crit :
=0A=
> > I have a small confusion.... In my image=2C I have normal Qt4 packages
=0A=
> > installed and they are working good. Now=2C when I wanted to develop a =
Qt
=0A=
> > application for my image=2C I compiled a toolchain but unfortunately=2C=
 I don't
=0A=
> > find qmake installed.
=0A=
> >
=0A=
> > After browsing the directories I found the following
=0A=
> >
=0A=
> > damarla@linuxbuildsrv:~/openYocto/poky/meta/recipes-qt/packagegroups$ l=
s -la
=0A=
> > total 40
=0A=
> > drwxrwxr-x 2 damarla damarla 4096 Jun 17 13:50 .
=0A=
> > drwxrwxr-x 9 damarla damarla 4096 Jun 17 13:50 ..
=0A=
> > -rw-rw-r-- 1 damarla damarla  104 Jun 17 13:50
=0A=
> > nativesdk-packagegroup-qte-toolchain-host.bb
=0A=
> > -rw-rw-r-- 1 damarla damarla   95 Jun 17 13:50
=0A=
> > nativesdk-packagegroup-qt-toolchain-host.bb
=0A=
> > -rw-rw-r-- 1 damarla damarla  178 Jun 17 13:50
=0A=
> > nativesdk-packagegroup-qt-toolchain-host.inc
=0A=
> > -rw-rw-r-- 1 damarla damarla 1458 Jun 17 13:50 packagegroup-core-qt4e.b=
b
=0A=
> > -rw-rw-r-- 1 damarla damarla  501 Jun 17 13:50 packagegroup-core-qt.bb
=0A=
> > -rw-rw-r-- 1 damarla damarla  136 Jun 17 13:50
=0A=
> > packagegroup-qte-toolchain-target.bb
=0A=
> > -rw-rw-r-- 1 damarla damarla  335 Jun 17 13:50
=0A=
> > packagegroup-qt-toolchain-target.bb
=0A=
> > -rw-rw-r-- 1 damarla damarla 1123 Jun 17 13:50
=0A=
> > packagegroup-qt-toolchain-target.inc
=0A=
> >
=0A=
> > Now in order to get "qmake" for my toolchain I am not able to understan=
d
=0A=
> > which package group should I include from the above.
=0A=
>
=0A=
> bitbake meta-toolchain-qte
=0A=
> recipe in :
=0A=
> ./meta/recipes-qt/meta/meta-toolchain-qte.bb
=0A=
>
=0A=
oops sorry I didn't read you wanted Qt/X11 :-(
=0A=

=0A=
Anyway you can base your work one meta-toolchain-qte to integrate the
=0A=
Qt/X11 packages.
=0A=

=0A=
Eric
=0A=

=0A=

_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto 		 	   		  =

--_9eb44c6a-398f-4a79-84dc-f82b37db9d8c_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>If I am not mistaken you can do:=
<br>&nbsp=3B&nbsp=3B&nbsp=3B bitbake meta-toolchain-qte<br><br>then you'll =
get a toolchain with qmake.<br><br><div><hr id=3D"stopSpelling">Date: Fri=
=2C 28 Jun 2013 08:41:41 +0200<br>From: satyaswaroop.damarla@gmail.com<br>T=
o: eric@eukrea.com=3B yocto@yoctoproject.org<br>Subject: Re: [yocto] Qt4 - =
qmake in toolchain for Qt/X11<br><br><div dir=3D"ltr">Hi Eric=2C<div><br></=
div><div>Can you explain how does that work.. I develop an application on q=
te and it works on qt/x11... Is it because qt is cross-platform compatible.=
..</div><div><br></div><div>Greets=2C</div>=0A=
<div>Sati</div></div><div class=3D"ecxgmail_extra"><br><br><div class=3D"ec=
xgmail_quote">On Thu=2C Jun 27=2C 2013 at 4:48 PM=2C Eric B=E9nard <span di=
r=3D"ltr">&lt=3B<a href=3D"mailto:eric@eukrea.com" target=3D"_blank">eric@e=
ukrea.com</a>&gt=3B</span> wrote:<br>=0A=
<blockquote class=3D"ecxgmail_quote" style=3D"border-left:1px #ccc solid=3B=
padding-left:1ex=3B">Le Thu=2C 27 Jun 2013 16:40:19 +0200=2C<br>=0A=
Eric B=E9nard &lt=3B<a href=3D"mailto:eric@eukrea.com">eric@eukrea.com</a>&=
gt=3B a =E9crit :<br>=0A=
<div><div class=3D"h5"><br>=0A=
&gt=3B Hi=2C<br>=0A=
&gt=3B<br>=0A=
&gt=3B Le Thu=2C 27 Jun 2013 11:01:11 +0200=2C<br>=0A=
&gt=3B DAMARLA Satya Swaroop &lt=3B<a href=3D"mailto:satyaswaroop.damarla@g=
mail.com">satyaswaroop.damarla@gmail.com</a>&gt=3B a =E9crit :<br>=0A=
&gt=3B &gt=3B I have a small confusion.... In my image=2C I have normal Qt4=
 packages<br>=0A=
&gt=3B &gt=3B installed and they are working good. Now=2C when I wanted to =
develop a Qt<br>=0A=
&gt=3B &gt=3B application for my image=2C I compiled a toolchain but unfort=
unately=2C I don't<br>=0A=
&gt=3B &gt=3B find qmake installed.<br>=0A=
&gt=3B &gt=3B<br>=0A=
&gt=3B &gt=3B After browsing the directories I found the following<br>=0A=
&gt=3B &gt=3B<br>=0A=
&gt=3B &gt=3B damarla@linuxbuildsrv:~/openYocto/poky/meta/recipes-qt/packag=
egroups$ ls -la<br>=0A=
&gt=3B &gt=3B total 40<br>=0A=
&gt=3B &gt=3B drwxrwxr-x 2 damarla damarla 4096 Jun 17 13:50 .<br>=0A=
&gt=3B &gt=3B drwxrwxr-x 9 damarla damarla 4096 Jun 17 13:50 ..<br>=0A=
&gt=3B &gt=3B -rw-rw-r-- 1 damarla damarla &nbsp=3B104 Jun 17 13:50<br>=0A=
&gt=3B &gt=3B <a href=3D"http://nativesdk-packagegroup-qte-toolchain-host.b=
b" target=3D"_blank">nativesdk-packagegroup-qte-toolchain-host.bb</a><br>=
=0A=
&gt=3B &gt=3B -rw-rw-r-- 1 damarla damarla &nbsp=3B 95 Jun 17 13:50<br>=0A=
&gt=3B &gt=3B <a href=3D"http://nativesdk-packagegroup-qt-toolchain-host.bb=
" target=3D"_blank">nativesdk-packagegroup-qt-toolchain-host.bb</a><br>=0A=
&gt=3B &gt=3B -rw-rw-r-- 1 damarla damarla &nbsp=3B178 Jun 17 13:50<br>=0A=
&gt=3B &gt=3B nativesdk-packagegroup-qt-toolchain-host.inc<br>=0A=
&gt=3B &gt=3B -rw-rw-r-- 1 damarla damarla 1458 Jun 17 13:50 <a href=3D"htt=
p://packagegroup-core-qt4e.bb" target=3D"_blank">packagegroup-core-qt4e.bb<=
/a><br>=0A=
&gt=3B &gt=3B -rw-rw-r-- 1 damarla damarla &nbsp=3B501 Jun 17 13:50 <a href=
=3D"http://packagegroup-core-qt.bb" target=3D"_blank">packagegroup-core-qt.=
bb</a><br>=0A=
&gt=3B &gt=3B -rw-rw-r-- 1 damarla damarla &nbsp=3B136 Jun 17 13:50<br>=0A=
&gt=3B &gt=3B <a href=3D"http://packagegroup-qte-toolchain-target.bb" targe=
t=3D"_blank">packagegroup-qte-toolchain-target.bb</a><br>=0A=
&gt=3B &gt=3B -rw-rw-r-- 1 damarla damarla &nbsp=3B335 Jun 17 13:50<br>=0A=
&gt=3B &gt=3B <a href=3D"http://packagegroup-qt-toolchain-target.bb" target=
=3D"_blank">packagegroup-qt-toolchain-target.bb</a><br>=0A=
&gt=3B &gt=3B -rw-rw-r-- 1 damarla damarla 1123 Jun 17 13:50<br>=0A=
&gt=3B &gt=3B packagegroup-qt-toolchain-target.inc<br>=0A=
&gt=3B &gt=3B<br>=0A=
&gt=3B &gt=3B Now in order to get "qmake" for my toolchain I am not able to=
 understand<br>=0A=
&gt=3B &gt=3B which package group should I include from the above.<br>=0A=
&gt=3B<br>=0A=
&gt=3B bitbake meta-toolchain-qte<br>=0A=
&gt=3B recipe in :<br>=0A=
&gt=3B ./meta/recipes-qt/meta/<a href=3D"http://meta-toolchain-qte.bb" targ=
et=3D"_blank">meta-toolchain-qte.bb</a><br>=0A=
&gt=3B<br>=0A=
</div></div>oops sorry I didn't read you wanted Qt/X11 :-(<br>=0A=
<br>=0A=
Anyway you can base your work one meta-toolchain-qte to integrate the<br>=
=0A=
Qt/X11 packages.<br>=0A=
<span class=3D"ecxHOEnZb"><font color=3D"#888888"><br>=0A=
Eric<br>=0A=
</font></span></blockquote></div><br></div>=0A=
<br>_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto</div> 		 	   		  </div></body=
>
</html>=

--_9eb44c6a-398f-4a79-84dc-f82b37db9d8c_--
