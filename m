Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web11.915.1604602561854106784
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Nov 2020 10:56:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=CxNUOXzF;
 spf=pass (domain: kapsi.fi, ip: 91.232.154.25, mailfrom: antime@kapsi.fi)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	 s=20161220; h=References:To:Cc:In-Reply-To:Date:Subject:Mime-Version:
	Content-Type:Message-Id:From:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=r/WjmGZLuRqm2uRoYCC6chkroI3DEl5cuf7rdMAsuzM=; b=CxNUOXzF0SmKJZKT8pnSY7lNqW
	b9FmC7ciRnSr4ab/vo9VlP47z5OjUN22Cf05qejulTlH0BT9g62Ri1rJNyBbpmSH5TIyUuJfCuxXR
	zNLC1UP8wHC1BS9S3I73KnU+I7nXUlPMR+yIdWvMwdgTR+3weCdTMsp0foied0OmO8GcD2pxTTFBb
	BnBvd7mz/xSUdQX9okvts2zJ40SJNSv2xGEuJGK26YniamnP2aLZ4vNiaQtfUra6ahOmsYBT6RFHU
	afSCc7hOScvmwm9qocpsJUm1xUKLKiyQUJMCtH3pv5saxdHkbpmIlvk0O54llRwjL4jByWMbINq73
	/m4n0zJA==;
Received: from 89-27-44-133.bb.dnainternet.fi ([89.27.44.133] helo=[192.168.1.58])
	by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1kakQO-0008N3-Uj; Thu, 05 Nov 2020 20:55:57 +0200
From: "Anders Montonen" <Anders.Montonen@iki.fi>
Message-Id: <78CCF97C-A2F1-4755-AFCC-726ED8400D3B@iki.fi>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Subject: Re: [yocto] Reproducible builds and RPM packages
Date: Thu, 5 Nov 2020 20:55:55 +0200
In-Reply-To: <11326493-aab5-655d-9ade-d485e0c1c710@windriver.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
To: Randy MacLeod <randy.macleod@windriver.com>
References: <043D5DC3-E1B8-4305-B707-AD9C3AA10D39@iki.fi>
 <11326493-aab5-655d-9ade-d485e0c1c710@windriver.com>
X-Mailer: Apple Mail (2.3445.104.15)
X-SA-Exim-Connect-IP: 89.27.44.133
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_52A20252-4587-45AA-9659-87C53BD53C3C"

--Apple-Mail=_52A20252-4587-45AA-9659-87C53BD53C3C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 4 Nov 2020, at 23:23, Randy MacLeod <randy.macleod@windriver.com> =
wrote:
>=20
> On 2020-11-03 6:16 a.m., Anders Montonen wrote:
>> Hi,
>>=20
>> When going from Zeus to Dunfell, I noticed that all files on the =
rootfs had timestamps long in the past, which I assume is from =
reproducible builds now being on by default. While that is a good thing, =
running =E2=80=9Crpm -V=E2=80=9D on any installed package now reports =
that the mtime differs. Is this the intentional behavior?
> Hi Anders,
>=20
> I haven't played with that for a while but I'm pretty sure the answer =
is yes, it's intentional.
>=20
> You can read about reproducible builds here:
>    https://wiki.yoctoproject.org/wiki/Reproducible_Builds =
<https://wiki.yoctoproject.org/wiki/Reproducible_Builds>
> and compare to the source if needed:
>    =
https://git.openembedded.org/openembedded-core/tree/meta/classes/reproduci=
ble_build.bbclass?id=3D189630ca6cdf7ceb6cf9b8f9d86c58997f505efc&h=3Ddunfel=
l =
<https://git.openembedded.org/openembedded-core/tree/meta/classes/reproduc=
ible_build.bbclass?id=3D189630ca6cdf7ceb6cf9b8f9d86c58997f505efc&h=3Ddunfe=
ll>
>=20

Just to be clear, I=E2=80=99m referring to the RPM metadata. If you =
build a package, and then run "rpm -q --qf '[%{FILENAMES} =
%{FILEMTIMES}\n]' -p package=E2=80=9D on the output, the listed =
timestamps will not match either SOURCE_DATE_EPOCH, or =
REPRODUCIBLE_TIMESTAMP_ROOTFS. When you build an image, the timestamps =
in the filesystem will not be consistent with the timestamps in the RPM =
database, leading to errors if you try to verify an installed package. I =
would consider this a bug or an oversight.

Regards,
Anders Montonen=

--Apple-Mail=_52A20252-4587-45AA-9659-87C53BD53C3C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On 4 Nov 2020, at 23:23, Randy MacLeod &lt;<a =
href=3D"mailto:randy.macleod@windriver.com" =
class=3D"">randy.macleod@windriver.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D"">
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8" =
class=3D"">
 =20
  <div class=3D"">
    <div class=3D"moz-cite-prefix">On 2020-11-03 6:16 a.m., Anders
      Montonen wrote:<br class=3D"">
    </div>
    <blockquote type=3D"cite" =
cite=3D"mid:043D5DC3-E1B8-4305-B707-AD9C3AA10D39@iki.fi" class=3D"">
     =20
      <div class=3D"BodyFragment"><font size=3D"2" class=3D""><span =
style=3D"font-size:11pt;" class=3D"">
            <div class=3D"PlainText">Hi,<br class=3D"">
              <br class=3D"">
              When going from Zeus to Dunfell, I noticed that all files
              on the rootfs had timestamps long in the past, which I
              assume is from reproducible builds now being on by
              default. While that is a good thing, running =E2=80=9Crpm =
-V=E2=80=9D on
              any installed package now reports that the mtime differs.
              Is this the intentional behavior?<br class=3D"">
            </div>
          </span></font></div>
    </blockquote><p class=3D"">Hi Anders,<br class=3D"">
    </p><p class=3D""><font size=3D"2" class=3D"">I haven't played with =
that for a while but I'm
        pretty sure the answer is yes, it's intentional.</font></p><p =
class=3D""><font size=3D"2" class=3D"">You can read about </font><font =
size=3D"2" class=3D"">reproducible
        builds here:</font><br class=3D"">
      &nbsp;&nbsp; <a class=3D"moz-txt-link-freetext" =
href=3D"https://wiki.yoctoproject.org/wiki/Reproducible_Builds">https://wi=
ki.yoctoproject.org/wiki/Reproducible_Builds</a><br class=3D"">
      and compare to the source if needed:<br class=3D"">
      &nbsp;&nbsp;
<a class=3D"moz-txt-link-freetext" =
href=3D"https://git.openembedded.org/openembedded-core/tree/meta/classes/r=
eproducible_build.bbclass?id=3D189630ca6cdf7ceb6cf9b8f9d86c58997f505efc&am=
p;h=3Ddunfell">https://git.openembedded.org/openembedded-core/tree/meta/cl=
asses/reproducible_build.bbclass?id=3D189630ca6cdf7ceb6cf9b8f9d86c58997f50=
5efc&amp;h=3Ddunfell</a></p><div class=3D""><br =
class=3D""></div></div></div></blockquote><div><br =
class=3D""></div><div>Just to be clear, I=E2=80=99m referring to the RPM =
metadata. If you build a package, and then run "rpm -q --qf =
'[%{FILENAMES} %{FILEMTIMES}\n]' -p package=E2=80=9D on the output, the =
listed timestamps will not match either SOURCE_DATE_EPOCH, or =
REPRODUCIBLE_TIMESTAMP_ROOTFS. When you build an image, the timestamps =
in the filesystem will not be consistent with the timestamps in the RPM =
database, leading to errors if you try to verify an installed package. I =
would consider this a bug or an oversight.</div></div><br class=3D""><div =
class=3D"">Regards,</div><div class=3D"">Anders =
Montonen</div></body></html>=

--Apple-Mail=_52A20252-4587-45AA-9659-87C53BD53C3C--
