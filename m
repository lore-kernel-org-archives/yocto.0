Return-Path: <Qi.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F165E00726
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2012 18:22:41 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id qBO2MeDn014648
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2012 18:22:40 -0800 (PST)
Received: from [128.224.163.154] (128.224.163.154) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.318.4;
	Sun, 23 Dec 2012 18:22:40 -0800
Message-ID: <50D7BC8C.70708@windriver.com>
Date: Mon, 24 Dec 2012 10:23:08 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120410 Thunderbird/11.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <0342A6AD36648742A199353A51DDC703114FF6A1@ESESSMB305.ericsson.se>
In-Reply-To: <0342A6AD36648742A199353A51DDC703114FF6A1@ESESSMB305.ericsson.se>
X-Originating-IP: [128.224.163.154]
Subject: Re: Set hostname on image?
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
X-List-Received-Date: Mon, 24 Dec 2012 02:22:41 -0000
Content-Type: multipart/alternative;
	boundary="------------060901010303090702020508"

--------------060901010303090702020508
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/21/2012 11:04 PM, Jonas Jonsson L wrote:
> Hi!
> This is probably a very stupid question, but I don't understand how to 
> set the hostname of the system that I'm building (I'm building a 
> 'core-image-minimal'), unless I
> A) write a /etc/hostname file to the image, or
> B) write a script that updates the hostname during startup
> The installed (/etc/hostname) file is created & installed in the 
> base-files recipe, but I don't understand how to set/use the 
> hostname-variable in that recipe so that it becomes what I want it to 
> be (unless I start editing that recipe ....).
> Is there a way to modify the hostname from my 'local.conf' file?
The hostname.sh script in recipes-core/initscripts will be later 
modified to regard the kernel command line parameters. You can then 
specify your hostname in kernel command line when booting.

Best Regards,
Chen Qi
> Best regards, Merry Christmas & Happy New Year!
> Jonas
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--------------060901010303090702020508
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 12/21/2012 11:04 PM, Jonas Jonsson L wrote:
    <blockquote
cite="mid:0342A6AD36648742A199353A51DDC703114FF6A1@ESESSMB305.ericsson.se"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <meta name="Generator" content="Microsoft Exchange Server">
      <!-- converted from rtf -->
      <style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left: #800000 2px solid; } --></style>
      <font face="Arial" size="2"><span style="font-size: 10pt;">
          <div>Hi!</div>
          <div>&nbsp;</div>
          <div>This is probably a very stupid question, but I don't
            understand how to set the hostname of the system that I'm
            building (I'm building a 'core-image-minimal'), unless I</div>
          <div>&nbsp;</div>
          <div>A) write a /etc/hostname file to the image, or</div>
          <div>B) write a script that updates the hostname during
            startup</div>
          <div>&nbsp;</div>
          <div>The installed (/etc/hostname) file is created &amp;
            installed in the base-files recipe, but I don't understand
            how to set/use the hostname-variable in that recipe so that
            it becomes what I want it to be (unless I start editing that
            recipe ....).</div>
          <div>&nbsp;</div>
          <div>Is there a way to modify the hostname from my
            'local.conf' file?</div>
          <div>&nbsp;</div>
        </span></font></blockquote>
    The hostname.sh script in recipes-core/initscripts will be later
    modified to regard the kernel command line parameters. You can then
    specify your hostname in kernel command line when booting.<br>
    <br>
    Best Regards,<br>
    Chen Qi<br>
    <blockquote
cite="mid:0342A6AD36648742A199353A51DDC703114FF6A1@ESESSMB305.ericsson.se"
      type="cite"><font face="Arial" size="2"><span
          style="font-size:10pt;">
          <div>Best regards, Merry Christmas &amp; Happy New Year!</div>
          <div>&nbsp;</div>
          <div>Jonas</div>
          <div>&nbsp;</div>
          <div><font face="Times New Roman" size="3"><span
                style="font-size:12pt;">&nbsp;</span></font></div>
        </span></font>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------060901010303090702020508--
