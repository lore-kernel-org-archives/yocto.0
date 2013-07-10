Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-oa0-f45.google.com (mail-oa0-f45.google.com
	[209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 097E0E01466
	for <yocto@yoctoproject.org>; Wed, 10 Jul 2013 04:52:45 -0700 (PDT)
Received: by mail-oa0-f45.google.com with SMTP id j1so9322354oag.4
	for <yocto@yoctoproject.org>; Wed, 10 Jul 2013 04:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=uItgNiCXhjr8/dJPyOHxOIoZu1k16UxgfGg5x5sdbQY=;
	b=HyFu3+pI2kru7QxXRWp3x09JCtZZrk2eQ8bPq+kCPwqLFwFq8Wp6OsmTKF12Jd1P8s
	dyGjwO6awqFxQnAnNxl7s8Won375ap7/YqPmayGtEHLX6Jf2kmvFcF7X/L9r8yBPuh5U
	6A1RDKRIAJSmi9RuLBjCMtdV9Jzqj0fjkDM/sGpq9KufcKKFqRvyHXVQaCNCUfM1Y9yj
	vZ6WlhuP1kapjaSxnstsdCFI7MippYHmzrLV4hu6P+L98Rj6Zn0rWXtVWYqBNIefTs1k
	H8J593rPv57IS2tNtU/EbTxiXwYZw5XBPkFjkXVE8hPenoNS96YVXWYkKMPdgaK0Rxth
	wkew==
X-Received: by 10.182.50.200 with SMTP id e8mr27940839obo.35.1373457164463;
	Wed, 10 Jul 2013 04:52:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.103.45 with HTTP; Wed, 10 Jul 2013 04:52:24 -0700 (PDT)
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Wed, 10 Jul 2013 13:52:24 +0200
Message-ID: <CAAGt+t10y_jTgOue2ZNdVJxwU1zhQDZqHmgVCfXecK-j9YhmLQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: replace outdated opencv bitbake file
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
X-List-Received-Date: Wed, 10 Jul 2013 11:52:49 -0000
Content-Type: multipart/alternative; boundary=047d7b6700c966f77a04e126eafd

--047d7b6700c966f77a04e126eafd
Content-Type: text/plain; charset=ISO-8859-1

How to replace outdated opencv bitbake file?

When i build image, i get this following error, may be bitbake is unable to
fetch files. How to update these files?

WARNING: Failed to fetch URL svn://
code.opencv.org/svn/opencv/branches/2.4;module=opencv;protocol=http,
attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 1, output:
svn: E000002: Unable to connect to a repository at URL '
http://code.opencv.org/svn/opencv/branches/2.4/opencv'
svn: E000002: Could not open the requested SVN filesystem

ERROR: Function failed: Fetcher failure for URL: 'svn://
code.opencv.org/svn/opencv/branches/2.4;module=opencv;protocol=http'.
Unable to fetch URL from any source.
ERROR: Logfile of failure stored in:
/home/siguser/yocto2013-05-21/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/opencv-2.4.2-r1/temp/log.do_fetch.26358
ERROR: Task 565
(/home/siguser/yocto2013-05-21/poky/meta-openembedded/meta-oe/recipes-support/opencv/
opencv_2.4.bb, do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2688 tasks of which 2330 didn't need to be
rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:

/home/siguser/yocto2013-05-21/poky/meta-openembedded/meta-oe/recipes-support/opencv/
opencv_2.4.bb, do_fetch
Summary: There were 2 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

--047d7b6700c966f77a04e126eafd
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"border-collapse:collapse"><div>How to =
replace outdated opencv bitbake file?</div><div><br></div><div>When i build=
 image, i get this following error, may be bitbake is unable to fetch files=
. How to update these files?=A0</div>

<div><br></div><div><div>WARNING: Failed to fetch URL svn://<a href=3D"http=
://code.opencv.org/svn/opencv/branches/2.4;module=3Dopencv;protocol=3Dhttp"=
>code.opencv.org/svn/opencv/branches/2.4;module=3Dopencv;protocol=3Dhttp</a=
>, attempting MIRRORS if available</div>

<div>ERROR: Fetcher failure: Fetch command failed with exit code 1, output:=
</div><div>svn: E000002: Unable to connect to a repository at URL &#39;<a h=
ref=3D"http://code.opencv.org/svn/opencv/branches/2.4/opencv">http://code.o=
pencv.org/svn/opencv/branches/2.4/opencv</a>&#39;</div>

<div>svn: E000002: Could not open the requested SVN filesystem</div><div><b=
r></div><div>ERROR: Function failed: Fetcher failure for URL: &#39;svn://<a=
 href=3D"http://code.opencv.org/svn/opencv/branches/2.4;module=3Dopencv;pro=
tocol=3Dhttp">code.opencv.org/svn/opencv/branches/2.4;module=3Dopencv;proto=
col=3Dhttp</a>&#39;. Unable to fetch URL from any source.</div>

<div>ERROR: Logfile of failure stored in: /home/siguser/yocto2013-05-21/bui=
ld/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/opencv-2.4.2-r1/temp/log.do_=
fetch.26358</div><div>ERROR: Task 565 (/home/siguser/yocto2013-05-21/poky/m=
eta-openembedded/meta-oe/recipes-support/opencv/<a href=3D"http://opencv_2.=
4.bb">opencv_2.4.bb</a>, do_fetch) failed with exit code &#39;1&#39;</div>

<div>NOTE: Tasks Summary: Attempted 2688 tasks of which 2330 didn&#39;t nee=
d to be rerun and 1 failed.</div><div>Waiting for 0 running tasks to finish=
:</div><div><br></div><div>Summary: 1 task failed:</div><div>=A0 /home/sigu=
ser/yocto2013-05-21/poky/meta-openembedded/meta-oe/recipes-support/opencv/<=
a href=3D"http://opencv_2.4.bb">opencv_2.4.bb</a>, do_fetch</div>

<div>Summary: There were 2 WARNING messages shown.</div><div>Summary: There=
 were 2 ERROR messages shown, returning a non-zero exit code.</div></div><d=
iv><br></div><div style=3D"color:rgb(136,136,136);font-family:arial,sans-se=
rif">

<br></div></span></div>
</div>

--047d7b6700c966f77a04e126eafd--
