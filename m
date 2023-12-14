Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34879C4332F
	for <webhook@archiver.kernel.org>; Thu, 14 Dec 2023 16:31:10 +0000 (UTC)
Subject: Re: [yocto] do_rootfs failed
To: daniele.lugli@gmail.com,yocto@lists.yoctoproject.org
From: daniele.lugli@gmail.com
X-Originating-Location: Marina di Ravenna, Emilia-Romagna, IT (176.246.31.108)
X-Originating-Platform: Windows Opera 105
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 14 Dec 2023 08:31:01 -0800
References: <16371.1702494167654412785@lists.yoctoproject.org>
In-Reply-To: <16371.1702494167654412785@lists.yoctoproject.org>
Message-ID: <24207.1702571461436123132@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="J19KPQSd0mu9VZpSPHcU"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Dec 2023 16:31:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61891

--J19KPQSd0mu9VZpSPHcU
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

$ time bitbake core-image-rt-extended
...
NOTE: Executing Tasks
NOTE: Tasks Summary: Attempted 6713 tasks of which 6 didn't need to be reru=
n and all succeeded.
real 315m10.027s

Success this time !=C2=A0 Thank you all !

Now looking for what to burn from build/tmp/deploy/images/genericx86-64/ ..=
.
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

--J19KPQSd0mu9VZpSPHcU
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div><span style=3D"color: #008000;"><span style=3D"color: #000000;"><span =
style=3D"color: #008000;"><span style=3D"color: #000000;">$ time bitbake co=
re-image-rt-extended&nbsp;</span><br /></span></span>...<br /><span style=
=3D"color: #008000;">NOTE: Executing Tasks</span></span></div>
<div><span style=3D"color: #008000;">NOTE: Tasks Summary: Attempted 6713 ta=
sks of which 6 didn't need to be rerun and all succeeded.</span></div>
<div><span style=3D"color: #008000;">real<span style=3D"white-space: pre;">=
 </span>315m10.027s</span><br /><br />Success this time !&nbsp; Thank you a=
ll !<br /><br />Now looking for what to burn from build/tmp/deploy/images/g=
enericx86-64/ ...</div>
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

--J19KPQSd0mu9VZpSPHcU--

