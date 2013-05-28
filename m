Return-Path: <Fahad_Usman@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 007C6E014FA
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 05:06:10 -0700 (PDT)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1UhIfJ-00007W-14 from Fahad_Usman@mentor.com ;
	Tue, 28 May 2013 05:06:09 -0700
Received: from SVR-IES-FEM-01.mgc.mentorg.com ([137.202.0.104]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Tue, 28 May 2013 05:06:08 -0700
Received: from [137.202.157.99] (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.2.247.3; Tue, 28 May 2013 13:06:06 +0100
Message-ID: <51A49DA5.4070106@mentor.com>
Date: Tue, 28 May 2013 17:05:57 +0500
From: "Usman, Fahad" <Fahad_Usman@mentor.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130329 Thunderbird/17.0.5
MIME-Version: 1.0
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
References: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
In-Reply-To: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
X-Originating-IP: [137.202.0.76]
X-OriginalArrivalTime: 28 May 2013 12:06:08.0318 (UTC)
	FILETIME=[BCA2FDE0:01CE5B9B]
Cc: yocto@yoctoproject.org
Subject: Re: Hello world-Checksum error
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
X-List-Received-Date: Tue, 28 May 2013 12:06:10 -0000
Content-Type: multipart/alternative;
	boundary="------------080000030301000408090909"

--------------080000030301000408090909
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 05/28/2013 04:46 PM, Zafrullah Syed wrote:
> *My hello.bb <http://hello.bb> file is*:
>
> DESCRIPTION = "GNU Helloworld application"
> SECTION = "examples"
> LICENSE = "GPLv3+"
> LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
> PR = "r0"
> SRC_URI = "${ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz 
> <ftp://ftp.gnu.org/gnu%7D/hello/hello-$%7B2.7%7D.tar.gz>"
> inherit autotools gettext
>
> I downloaded hello-2.7.tar.gz -> extracted -> ran md5sum against 
> COPYING -> got md5 -> added that md5 to my hello.bb <http://hello.bb> 
> file.
> Any ideas where I am doing wrong?
>
I think you need to add the md5 sum of source tarball as well, something 
like
SRC_URI[md5sum] = "b93435488942486c8d0ca22e8f768034"

Regards,
Fahad.

--------------080000030301000408090909
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 05/28/2013 04:46 PM, Zafrullah Syed
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com"
      type="cite">
      <div style=""><b>My <a moz-do-not-send="true"
            href="http://hello.bb">hello.bb</a> file is</b>:</div>
      <div style=""><br>
      </div>
      <div style="">
        <div>DESCRIPTION = "GNU Helloworld application"&nbsp;</div>
        <div>SECTION = "examples"&nbsp;</div>
        <div>LICENSE = "GPLv3+"&nbsp;</div>
        <div>LIC_FILES_CHKSUM =
          <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=d32239bcb673463ab874e80d47fae504">"file://COPYING;md5=d32239bcb673463ab874e80d47fae504"</a>&nbsp;</div>
        <div>PR = "r0"&nbsp;</div>
        <div>SRC_URI = "${<a moz-do-not-send="true"
            href="ftp://ftp.gnu.org/gnu%7D/hello/hello-$%7B2.7%7D.tar.gz">ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz</a>"&nbsp;</div>
        <div>inherit autotools gettext&nbsp;</div>
        <div><br>
        </div>
        <div style="">I downloaded hello-2.7.tar.gz -&gt; extracted
          -&gt; ran md5sum against COPYING -&gt; got md5 -&gt; added
          that md5 to my <a moz-do-not-send="true"
            href="http://hello.bb">hello.bb</a> file.</div>
        <div style="">Any ideas where I am doing wrong?</div>
      </div>
      <div><br>
      </div>
    </blockquote>
    I think you need to add the md5 sum of source tarball as well,
    something like<br>
    SRC_URI[md5sum] = "b93435488942486c8d0ca22e8f768034"<br>
    <br>
    Regards,<br>
    Fahad.<br>
  </body>
</html>

--------------080000030301000408090909--
