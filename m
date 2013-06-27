Return-Path: <varun292006@gmail.com>
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EB91E013CB
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 10:58:05 -0700 (PDT)
Received: by mail-pa0-f46.google.com with SMTP id fa11so1378982pad.33
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 10:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=xDdRlkggBcs/wpZMCp1Hr0Ldmi+MzBSMh9s0sRLHHM0=;
	b=XvmKJBT7CIJJBsKgtUU79HUUn0G05D8Pl//rO9edd8ze7g0PfncnED07UngYIlDmxq
	KtbLwA2f0Td3vl0ipBY6zaoYCXa52z31T6Mb5z2MP5TChl26hpbCQnkcb0JkwUi9gCxi
	+ib7KwsQwlDktHr9vr/XlWcXjvS7gJvZIpBuQbTiDycPL40dJPW71H2koEtAVHVuzVhc
	H6RSY5xsx8ALH+ghxW0D5SMT33bw05RcMVu3T45Ug/HtetLqN50OJqJ/LvJv1IR8h36J
	lBrwunP2BwaTCMgyrqeCSbctyXb6G0FmAx9IpZM/Ao8Omg6ernQxbgQmey+bDBZn9FD6
	1lDg==
MIME-Version: 1.0
X-Received: by 10.68.164.69 with SMTP id yo5mr7288661pbb.96.1372355885716;
	Thu, 27 Jun 2013 10:58:05 -0700 (PDT)
Received: by 10.68.129.134 with HTTP; Thu, 27 Jun 2013 10:58:05 -0700 (PDT)
In-Reply-To: <51C9EBCE.40501@linux.intel.com>
References: <CAGxOggHpJNSb6vetbD40+ww-iyVxS3cUaZVhOF1t_OFCfQ4zSw@mail.gmail.com>
	<CAGxOggH4UzCDOE5m=qFTPMDYmO1-jdtV1KtTn0XmyAnEd_pSfg@mail.gmail.com>
	<CAGxOggH_6stRyaVVvY3ZrzZjOMZPQR17TMhbnnsY2RaOeH-vWQ@mail.gmail.com>
	<1690360.8lqJBmT90c@helios>
	<CAGxOggFQL2ehH4XBGD+L9k773hgJu5hx61rmnUqxCn033W9GXA@mail.gmail.com>
	<51C9EBCE.40501@linux.intel.com>
Date: Thu, 27 Jun 2013 23:28:05 +0530
Message-ID: <CAGxOggG7R-5rLHg3H_WH9wtgSnf0EZfRAYs2jtQvGK+DeQfTiA@mail.gmail.com>
From: varun bhatnagar <varun292006@gmail.com>
To: Saul Wold <sgw@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Layers not getting recognized by bitbake
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
X-List-Received-Date: Thu, 27 Jun 2013 17:58:08 -0000
Content-Type: multipart/alternative; boundary=047d7b6764e612dad904e02681e6

--047d7b6764e612dad904e02681e6
Content-Type: text/plain; charset=ISO-8859-1

 Thanks a ton Paul and Saul for the reply. Your suggestion worked. :)
But after building my recipe file I executed bitbake -k core-image-minimal
and I got the following error:

NOTE: Resolving any missing task queue dependencies
Missing or unbuildable dependency chain was: ['app-ea']
ERROR: Nothing RPROVIDES 'app-ea' (but
/local/varun/poky-yocto-1.4-m3/meta/recipes-core/images/
core-image-minimal.bb RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'com-ea' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['test-ea']
ERROR: Nothing RPROVIDES 'tipcutils' (but
/local/varun/poky-yocto-1.4-m3/meta/recipes-core/images/
core-image-minimal.bb RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'tipcutils' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['tipcutils']
NOTE: Preparing runqueue
ERROR: All buildable tasks have been run but the build is incomplete
(--continue mode). Errors for the tasks that failed will have been printed
above.

Summary: There were 3 ERROR messages shown, returning a non-zero exit code.


Any idea how to resolve this one?

//
Varun

--047d7b6764e612dad904e02681e6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">=A0Thanks a ton Paul and Saul for the reply. Your suggestion worked. =
:)</div><div class=3D"gmail_extra">But after building my recipe file I exec=
uted bitbake -k core-image-minimal and I got the following error:</div>
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">NOTE: Resol=
ving any missing task queue dependencies</div><div class=3D"gmail_extra">Mi=
ssing or unbuildable dependency chain was: [&#39;app-ea&#39;]</div><div cla=
ss=3D"gmail_extra">
ERROR: Nothing RPROVIDES &#39;app-ea&#39; (but /local/varun/poky-yocto-1.4-=
m3/meta/recipes-core/images/<a href=3D"http://core-image-minimal.bb">core-i=
mage-minimal.bb</a> RDEPENDS on or otherwise requires it)</div><div class=
=3D"gmail_extra">
NOTE: Runtime target &#39;com-ea&#39; is unbuildable, removing...</div><div=
 class=3D"gmail_extra">Missing or unbuildable dependency chain was: [&#39;t=
est-ea&#39;]</div><div class=3D"gmail_extra">ERROR: Nothing RPROVIDES &#39;=
tipcutils&#39; (but /local/varun/poky-yocto-1.4-m3/meta/recipes-core/images=
/<a href=3D"http://core-image-minimal.bb">core-image-minimal.bb</a> RDEPEND=
S on or otherwise requires it)</div>
<div class=3D"gmail_extra">NOTE: Runtime target &#39;tipcutils&#39; is unbu=
ildable, removing...</div><div class=3D"gmail_extra">Missing or unbuildable=
 dependency chain was: [&#39;tipcutils&#39;]</div><div class=3D"gmail_extra=
">
NOTE: Preparing runqueue</div><div class=3D"gmail_extra">ERROR: All buildab=
le tasks have been run but the build is incomplete (--continue mode). Error=
s for the tasks that failed will have been printed above.</div><div class=
=3D"gmail_extra">
<br></div><div class=3D"gmail_extra">Summary: There were 3 ERROR messages s=
hown, returning a non-zero exit code.</div><div class=3D"gmail_extra"><br><=
/div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Any id=
ea how to resolve this one?</div>
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">//</div><di=
v class=3D"gmail_extra">Varun</div></div>

--047d7b6764e612dad904e02681e6--
