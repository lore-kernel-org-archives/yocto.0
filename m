Return-Path: <jfabernathy@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C1B3E01402
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 11:58:44 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so5853706yhf.35
	for <yocto@yoctoproject.org>; Tue, 03 Jul 2012 11:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type;
	bh=2dApgu/ECGTRviLV59PoAE9MlKPv7qmBaeral4kZLik=;
	b=q4PsRoBPG1Uyw/ee+U+gBT4YtIyxaOqs7Zi1nuT/Wv0hLDWUOO1ytLzMMbR+nKk8FD
	B+vnvssf4s9bWrFMIv8oeNvru71sz+HsWKGVCq2cE5xgOCL6WDZjypUZp7mUWLfGa3+p
	OEr71AV1bt23OgJ/Di/mxdT2T5Q9FFH0ikj7C2waG9fiu3MmMJbE+PFVCzELQxmFtu1J
	J5v7+BcblCIQrUu5Mz6MDKdp1tYWx24nsz77/qZBoN4TdgzcvFqRH/BPOe/7M8NdFZMI
	l14WYQISjE0cSgd8dSlg9CAP3VDV/wwf8t+/5wtKc+ppUU09Tbbg38xncP5W/m0G+GJe
	qQNw==
Received: by 10.236.114.169 with SMTP id c29mr21849239yhh.108.1341341923590;
	Tue, 03 Jul 2012 11:58:43 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id p29sm33201650yhl.19.2012.07.03.11.58.42
	(version=SSLv3 cipher=OTHER); Tue, 03 Jul 2012 11:58:43 -0700 (PDT)
Message-ID: <4FF340E2.5030500@gmail.com>
Date: Tue, 03 Jul 2012 14:58:42 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: Chris Hallinan <challinan@gmail.com>
References: <4FE73AF6.2060008@gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FA2E@ORSMSX101.amr.corp.intel.com>
	<CAME0jBRJS_zxENDxB8_-rhgwCR49B_wM-x=g-kZw=ggpWNbUcA@mail.gmail.com>
In-Reply-To: <CAME0jBRJS_zxENDxB8_-rhgwCR49B_wM-x=g-kZw=ggpWNbUcA@mail.gmail.com>
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
X-List-Received-Date: Tue, 03 Jul 2012 18:58:44 -0000
Content-Type: multipart/alternative;
	boundary="------------030308000901020702030401"

--------------030308000901020702030401
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/03/2012 02:57 PM, Chris Hallinan wrote:
> On Tue, Jul 3, 2012 at 2:25 PM, Rifenbark, Scott M 
> <scott.m.rifenbark@intel.com <mailto:scott.m.rifenbark@intel.com>> wrote:
>
>     Jim,
>
>     Do you have a list of what you had to install?  I can add this to
>     the QS "Packages" section.
>
>     Scott
>
>     -----Original Message-----
>     From: yocto-bounces@yoctoproject.org
>     <mailto:yocto-bounces@yoctoproject.org>
>     [mailto:yocto-bounces@yoctoproject.org
>     <mailto:yocto-bounces@yoctoproject.org>] On Behalf Of jfabernathy
>     Sent: Sunday, June 24, 2012 9:06 AM
>     To: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     Subject: [yocto] prerequisite tools for making documentation
>
>     I had a need to look at the bitbake manual in the
>     poky/bitbake/doc/manual directory and tried to make pdf.  I had
>     all the
>     prerequisites listed in the QS guide.  However, I found the make
>     failed
>     due to a number of xml related tools being missing.  I installed those
>     and got the pdf manual generated.
>
>     Should we add those xml tools to the prerequisites?  BTW, I'm using
>     denzil branch and referring to the QS guide 1.2.
>
>
> I'd also be interested in knowing what host you built it on, as 
> several of us (including myself) have had difficulty building docs.
>

I'm running Ubuntu 12.04 LTS.

Jim A
> Thanks,
>
> Chris
> -- 
> Life is like Linux - it never stands still.
>
>



--------------030308000901020702030401
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/03/2012 02:57 PM, Chris Hallinan
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAME0jBRJS_zxENDxB8_-rhgwCR49B_wM-x=g-kZw=ggpWNbUcA@mail.gmail.com"
      type="cite">On Tue, Jul 3, 2012 at 2:25 PM, Rifenbark, Scott M <span
        dir="ltr">&lt;<a moz-do-not-send="true"
          href="mailto:scott.m.rifenbark@intel.com" target="_blank">scott.m.rifenbark@intel.com</a>&gt;</span>
      wrote:<br>
      <div class="gmail_quote">
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">
          Jim,<br>
          <br>
          Do you have a list of what you had to install? &nbsp;I can add this
          to the QS "Packages" section.<br>
          <br>
          Scott<br>
          <br>
          -----Original Message-----<br>
          From: <a moz-do-not-send="true"
            href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>
          [mailto:<a moz-do-not-send="true"
            href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>]
          On Behalf Of jfabernathy<br>
          Sent: Sunday, June 24, 2012 9:06 AM<br>
          To: <a moz-do-not-send="true"
            href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
          Subject: [yocto] prerequisite tools for making documentation<br>
          <br>
          I had a need to look at the bitbake manual in the<br>
          poky/bitbake/doc/manual directory and tried to make pdf. &nbsp;I
          had all the<br>
          prerequisites listed in the QS guide. &nbsp;However, I found the
          make failed<br>
          due to a number of xml related tools being missing. &nbsp;I
          installed those<br>
          and got the pdf manual generated.<br>
          <br>
          Should we add those xml tools to the prerequisites? &nbsp;BTW, I'm
          using<br>
          denzil branch and referring to the QS guide 1.2.<br>
        </blockquote>
        <div><br>
        </div>
        <div>I'd also be interested in knowing what host you built it
          on, as several of us (including myself) have had difficulty
          building docs.</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    <br>
    I'm running Ubuntu 12.04 LTS.<br>
    <br>
    Jim A<br>
    <blockquote
cite="mid:CAME0jBRJS_zxENDxB8_-rhgwCR49B_wM-x=g-kZw=ggpWNbUcA@mail.gmail.com"
      type="cite">
      <div class="gmail_quote">
        <div>Thanks,</div>
        <div><br>
        </div>
        <div>Chris</div>
        <div>&nbsp;</div>
      </div>
      -- <br>
      Life is like Linux - it never stands still.<br>
      <br>
      <br>
    </blockquote>
    <br>
    <br>
  </body>
</html>

--------------030308000901020702030401--
