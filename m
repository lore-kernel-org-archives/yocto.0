Return-Path: <jfabernathy@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CDD8E006B1
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 11:57:57 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so5852404yhf.35
	for <yocto@yoctoproject.org>; Tue, 03 Jul 2012 11:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type;
	bh=h4BknHU8v+c27IWUicJajHarrl+UF2VCa6gNVjbsbvE=;
	b=rIPQtZ7pPfBUtd5+49jjS6GU13sS/8QuBWrRHE3aLL3ZBBbaIRZo9XUADDr5ApBQ98
	BGPirEcIWjb8Owafv3OMCjLIeJ/WZGUexyj9nxXvzeha/F2yxx6HsDsALIKq5S+AcsaO
	vm0HlT1CQ1NmHFmEW7dW70c+wos7fY8z2M8Ih/NTPjQPxYj7hEESgPZSGR5GflKmOcLK
	8hLLhSJEmQQrONOijfeTWRjjUbH78QcmuUwsC9Yy1IxfvkF0ie8OmSZZYs1s3yrOJIq3
	xRMPsQvjv37Y0VUFVMHI0vx3aOsAcpxnWJWJqGnSLUptNnSsbIHLWikNcTQ4wRSPr5RK
	UdNg==
Received: by 10.236.190.5 with SMTP id d5mr21917563yhn.49.1341341876446;
	Tue, 03 Jul 2012 11:57:56 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id a79sm2776635yhk.16.2012.07.03.11.57.55
	(version=SSLv3 cipher=OTHER); Tue, 03 Jul 2012 11:57:56 -0700 (PDT)
Message-ID: <4FF340B3.6090106@gmail.com>
Date: Tue, 03 Jul 2012 14:57:55 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <4FE73AF6.2060008@gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FA2E@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FA2E@ORSMSX101.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: prerequisite tools for making documentation
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
X-List-Received-Date: Tue, 03 Jul 2012 18:57:57 -0000
Content-Type: multipart/alternative;
	boundary="------------090507030209050800080506"

--------------090507030209050800080506
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/03/2012 02:25 PM, Rifenbark, Scott M wrote:
> Jim,
>
> Do you have a list of what you had to install?  I can add this to the QS "Packages" section.
>
> Scott
*Scott,

I had to go thru the apt log for the day I posted this issues. Below are 
the packages.  I imagine that texlive brought in the last 8 or so.

Jim A

Selecting previously unselected package libxml2-utils.

Selecting previously unselected package docbook-xsl.

Selecting previously unselected package xmlto.

Selecting previously unselected package xmltex.

Selecting previously unselected package texlive.
Selecting previously unselected package texlive-bibtex-extra.
Selecting previously unselected package preview-latex-style.
Selecting previously unselected package texlive-pictures.
Selecting previously unselected package texlive-latex-extra.
Selecting previously unselected package texlive-math-extra.
Selecting previously unselected package dblatex.
Selecting previously unselected package texlive-latex-extra-doc.
Selecting previously unselected package texlive-pictures-doc. *



-----Original Message----- From: yocto-bounces@yoctoproject.org 
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of jfabernathy Sent: 
Sunday, June 24, 2012 9:06 AM To: yocto@yoctoproject.org Subject: 
[yocto] prerequisite tools for making documentation I had a need to look 
at the bitbake manual in the poky/bitbake/doc/manual directory and tried 
to make pdf. I had all the prerequisites listed in the QS guide. 
However, I found the make failed due to a number of xml related tools 
being missing. I installed those and got the pdf manual generated. 
Should we add those xml tools to the prerequisites? BTW, I'm using 
denzil branch and referring to the QS guide 1.2. Jim A 
_______________________________________________ yocto mailing list 
yocto@yoctoproject.org https://lists.yoctoproject.org/listinfo/yocto



--------------090507030209050800080506
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/03/2012 02:25 PM, Rifenbark,
      Scott M wrote:<br>
    </div>
    <blockquote
cite="mid:41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FA2E@ORSMSX101.amr.corp.intel.com"
      type="cite">
      <pre wrap="">Jim, 

Do you have a list of what you had to install?  I can add this to the QS "Packages" section.

Scott
</pre>
    </blockquote>
    <b>Scott,<br>
      <br>
      I had to go thru the apt log for the day I posted this issues.&nbsp;
      Below are the packages.&nbsp; I imagine that texlive brought in the
      last 8 or so.<br>
      <br>
      Jim A<br>
      <br>
      Selecting previously unselected package libxml2-utils.
<br>
      <br>
      Selecting previously unselected package docbook-xsl.
<br>
      <br>
      Selecting previously unselected package xmlto.
<br>
      <br>
      Selecting previously unselected package xmltex.
<br>
      <br>
      Selecting previously unselected package texlive.
<br>
      Selecting previously unselected package texlive-bibtex-extra.
<br>
      Selecting previously unselected package preview-latex-style.
<br>
      Selecting previously unselected package texlive-pictures.
<br>
      Selecting previously unselected package texlive-latex-extra.
<br>
      Selecting previously unselected package texlive-math-extra.
<br>
      Selecting previously unselected package dblatex.
<br>
      Selecting previously unselected package texlive-latex-extra-doc.
<br>
      Selecting previously unselected package texlive-pictures-doc.
</b>
    <br>
    <br>
    <br>
    <br>
    -----Original Message-----
    From: <a class="moz-txt-link-abbreviated" href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>
    [<a class="moz-txt-link-freetext" href="mailto:yocto-bounces@yoctoproject.org">mailto:yocto-bounces@yoctoproject.org</a>] On Behalf Of jfabernathy
    Sent: Sunday, June 24, 2012 9:06 AM
    To: <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
    Subject: [yocto] prerequisite tools for making documentation
    I had a need to look at the bitbake manual in the
    poky/bitbake/doc/manual directory and tried to make pdf. I had all
    the prerequisites listed in the QS guide. However, I found the make
    failed due to a number of xml related tools being missing. I
    installed those and got the pdf manual generated.
    Should we add those xml tools to the prerequisites? BTW, I'm using
    denzil branch and referring to the QS guide 1.2.
    Jim A
    _______________________________________________
    yocto mailing list
    <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
    <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
    <blockquote
cite="mid:41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FA2E@ORSMSX101.amr.corp.intel.com"
      type="cite">
    </blockquote>
    <br>
    <br>
  </body>
</html>

--------------090507030209050800080506--
