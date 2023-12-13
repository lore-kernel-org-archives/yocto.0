Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 137C8C4332F
	for <webhook@archiver.kernel.org>; Wed, 13 Dec 2023 08:03:51 +0000 (UTC)
Subject: Re: [yocto] do_rootfs failed
To: daniele.lugli@gmail.com,yocto@lists.yoctoproject.org
From: daniele.lugli@gmail.com
X-Originating-Location: Marina di Ravenna, Emilia-Romagna, IT (176.246.31.108)
X-Originating-Platform: Windows Opera 105
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 13 Dec 2023 00:03:45 -0800
References: <10379.1702413544329430628@lists.yoctoproject.org>
In-Reply-To: <10379.1702413544329430628@lists.yoctoproject.org>
Message-ID: <16371.1702454625543134373@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8vNJh81Q4E7PmWV68Fk9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Dec 2023 08:03:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61874

--8vNJh81Q4E7PmWV68Fk9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Not sure. I don't see the original error any more, but

NOTE: No reply from server in 30s (for command ping at 02:08:20.176053)
Timeout while waiting for a reply from the bitbake server (60s at 02:08:50.=
440750)

How can I know if this timeout happened before or after completion of the b=
itbake command?

Also, I see a lot of warning messages like these:

WARNING: rt-app-1.0-r0 do_package: URL: git://github.com/gbagnoli/rt-app.gi=
t uses git protocol which is no longer supported by github. Please change t=
o ;protocol=3Dhttps in the url.
WARNING: rt-app-1.0-r0 do_package: URL: git://github.com/gbagnoli/rt-app.gi=
t does not set any branch parameter. The future default branch used by tool=
s and repositories is uncertain and we will therefore soon require this is =
set in all git urls.

Are these important and how can they be cured?

Thank you again

--
Daniele Lugli
General Logic srl
Viale Curreno, 41
10133 Torino
Italy
tel +39 329 3933041
www.general-logic.com ( http://www.general-logic.com/ )
www.linkedin.com/in/daniele- lugli ( http://www.linkedin.com/in/daniele-lug=
li )

--8vNJh81Q4E7PmWV68Fk9
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Not sure. I don't see the original error any more, but<br /><br />
<div><span style=3D"color: #ff0000;">NOTE: No reply from server in 30s (for=
 command ping at 02:08:20.176053)</span></div>
<div><span style=3D"color: #ff0000;">Timeout while waiting for a reply from=
 the bitbake server (60s at 02:08:50.440750)</span><br /><br />How can I kn=
ow if this timeout happened before or after completion of the bitbake comma=
nd?<br /><br />Also, I see a lot of warning messages like these:<br /><br /=
>
<div><span style=3D"color: #ff0000;">WARNING: rt-app-1.0-r0 do_package: URL=
: git://github.com/gbagnoli/rt-app.git uses git protocol which is no longer=
 supported by github. Please change to ;protocol=3Dhttps in the url.</span>=
</div>
<div><span style=3D"color: #ff0000;">WARNING: rt-app-1.0-r0 do_package: URL=
: git://github.com/gbagnoli/rt-app.git does not set any branch parameter. T=
he future default branch used by tools and repositories is uncertain and we=
 will therefore soon require this is set in all git urls.</span><br /><br /=
>Are these important and how can they be cured?<br /><br />Thank you again<=
/div>
<div>&nbsp;</div>
</div>
<div>&nbsp;</div>
-- <br />
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">
<div dir=3D"ltr">
<div>Daniele Lugli</div>
General Logic srl</div>
<div>Viale Curreno, 41</div>
<div>10133 Torino<br />Italy</div>
<div>tel +39 329 3933041</div>
</div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.general-lo=
gic.com/" target=3D"_blank" rel=3D"noopener" data-saferedirecturl=3D"https:=
//www.google.com/url?q=3Dhttp://www.general-logic.com&amp;source=3Dgmail&am=
p;ust=3D1702484712598000&amp;usg=3DAOvVaw3caieBojp7RHbXjtN3Avtg">www.genera=
l-logic.com</a></div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.linkedin.c=
om/in/daniele-lugli" target=3D"_blank" rel=3D"noopener" data-saferedirectur=
l=3D"https://www.google.com/url?q=3Dhttp://www.linkedin.com/in/daniele-lugl=
i&amp;source=3Dgmail&amp;ust=3D1702484712598000&amp;usg=3DAOvVaw2CJ1YOxQZd7=
TCndA_wq8ak">www.linkedin.com/in/daniele-<wbr />lugli</a></div>

--8vNJh81Q4E7PmWV68Fk9--

