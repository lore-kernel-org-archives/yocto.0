Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2762AE00D06; Tue, 24 Oct 2017 19:52:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2575CE00D03
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 19:52:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v9P2q0Be007865
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 24 Oct 2017 19:52:00 -0700 (PDT)
Received: from [128.224.163.189] (128.224.163.189) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Tue, 24 Oct 2017 19:51:59 -0700
To: Bacheh Karaji <bachehkaraji@yahoo.com>, Yocto Project
	<yocto@yoctoproject.org>
References: <886279436.3600717.1508846299490.ref@mail.yahoo.com>
	<886279436.3600717.1508846299490@mail.yahoo.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <646e07c5-824a-1c4f-7643-6d41c17d8b72@windriver.com>
Date: Wed, 25 Oct 2017 10:53:00 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <886279436.3600717.1508846299490@mail.yahoo.com>
X-Originating-IP: [128.224.163.189]
Subject: Re: How /etc/shadow packed into my final image?
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
X-List-Received-Date: Wed, 25 Oct 2017 02:52:05 -0000
Content-Type: multipart/alternative;
	boundary="------------08F0E2731EC41ED424292997"

--------------08F0E2731EC41ED424292997
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/24/2017 07:58 PM, Bacheh Karaji wrote:
> Hi,
>
> I wanted to modify the content of /etc/shadow,
> but don't know how /etc/shadow files is packed into final image.
>
> Can anybody how it is packed and way to modify it?
> Thanks
>
>
>
>

The file is created in postinst of the shadow package.

Codes are like below:
root@qemux86-64:~# rpm -q --scripts shadow
postinstall scriptlet (using /bin/sh):
# shadow - postinst
     if [ "x$D" != "x" ]; then
       rootarg="--root $D"
     else
       rootarg=""
     fi

     pwconv $rootarg || exit 1
     grpconv $rootarg || exit 1
[snip]

There are several ways to modify the file, depending on your purpose.
If you just want to modify/add/delete user/group in recipe, please try 
to make use of useradd*.bbclass.
http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.html#ref-classes-useradd

If you want to do user/group operation in conf file, please try to make 
use of extrausers.bbclass.
http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.html#ref-classes-extrausers

The above should be basically enough.

Best Regards,
Chen Qi


--------------08F0E2731EC41ED424292997
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/24/2017 07:58 PM, Bacheh Karaji
      wrote:<br>
    </div>
    <blockquote
      cite="mid:886279436.3600717.1508846299490@mail.yahoo.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div style="font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:10px;">
        <div><font size="3">Hi,</font></div>
        <div><font size="3"><br>
          </font></div>
        <div><font size="3">I wanted to modify the content of
            /etc/shadow,</font></div>
        <div><font size="3">but don't know how </font><span
            style="font-size: medium;">/etc/shadow files is packed into
            final image.</span></div>
        <div><font size="3"><br>
          </font></div>
        <div><font size="3">Can anybody how it is packed and way to
            modify it?</font></div>
        <div><font size="3">Thanks</font></div>
        <br>
        <br>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    The file is created in postinst of the shadow package.<br>
    <br>
    Codes are like below:<br>
    root@qemux86-64:~# rpm -q --scripts shadow<br>
    postinstall scriptlet (using /bin/sh):<br>
    # shadow - postinst<br>
        if [ "x$D" != "x" ]; then<br>
          rootarg="--root $D"<br>
        else<br>
          rootarg=""<br>
        fi<br>
    <br>
        pwconv $rootarg || exit 1<br>
        grpconv $rootarg || exit 1<br>
    [snip]<br>
    <br>
    There are several ways to modify the file, depending on your
    purpose.<br>
    If you just want to modify/add/delete user/group in recipe, please
    try to make use of useradd*.bbclass.<br>
<a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.html#ref-classes-useradd">http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.html#ref-classes-useradd</a><br>
    <br>
    If you want to do user/group operation in conf file, please try to
    make use of extrausers.bbclass.<br>
<a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.html#ref-classes-extrausers">http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.html#ref-classes-extrausers</a><br>
    <br>
    The above should be basically enough.<br>
    <br>
    Best Regards,<br>
    Chen Qi<br>
    <br>
  </body>
</html>

--------------08F0E2731EC41ED424292997--
