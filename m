Return-Path: <jpuhlman@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FAA6E00B94; Thu, 10 Dec 2015 13:32:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B0E0E0071A
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 13:32:28 -0800 (PST)
Received: by pacwq6 with SMTP id wq6so53375998pac.1
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 13:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:cc:message-id:date:user-agent
	:mime-version:in-reply-to:content-type;
	bh=/FOC28JMSsfCbWu3YmjOGSZFw2o46/qJx9ItiNBYqEA=;
	b=oCPt+AWnNfmisHoJ+lb7SRkFsm0I2mlYGcjUiKprvLp9gKsfUcx5o+plUne5gQZeIu
	FAJ28eO1aOr3skRIMgwZqdjeUjCa0JfPFaGfSZozz3jdqcgg80T2OzWYWH9yc1kL+qd+
	WDODnUueyYhAFZlXVI1oaac7DGSEa3dgGNDM4mOfURW8ZCX5xYOVa1rCiNWAzCsCiEBx
	hEP2s0qEdfULXk5NgEmicCFKJMhxoPnCumB5Dy5Qof6WbzMiM8KoAHiqTFQ4Bi1kAnR2
	YGCQg88I84A41IBkHFD1Nemsw9HZl0P5jAlaQQSGtSwxRzMKgeIqylPL3CZP97VbDmnV
	X4AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:cc:message-id:date
	:user-agent:mime-version:in-reply-to:content-type;
	bh=/FOC28JMSsfCbWu3YmjOGSZFw2o46/qJx9ItiNBYqEA=;
	b=MWU3Y1Ho6JJppuZCBbXcfj7778D3tJmDRgPW5//HurIj0AhqMJfUaltrcj1ePekAwM
	tbaW1mZymqD7iedtiQ08jc0aJGxGiqSkLNTZSCpu0UdUZNFxmPUuLWrDB7PP+rkTXT6p
	KhQViluEbM2drifnRf8cKXk8+4Nun8Z/pxi/aqiPgZafUxpQr4eT9WyMnQOujioVv3f1
	NDEwdvHuXVxzIXKfni1S6fZ802rgwd9NfyvM32suDL8zE5IWmjXxiu73+72WF5u7R0Hs
	DUjwlP6H2raK62ByaA/g+mn18++axW3LtvTiQbmfWHeBpxknd+ec8ihGTIRytY1RWA7m
	3jrg==
X-Gm-Message-State: ALoCoQkULbhX6zOTuKTf/nYR9I+Z7YK23ipB8cqvEB4dQAw4GecOzPT0/nRSfbPS408MG+i6ru+tmneHivWvd+828iKnlXZ6mQ==
X-Received: by 10.66.159.131 with SMTP id xc3mr6080160pab.97.1449783148538;
	Thu, 10 Dec 2015 13:32:28 -0800 (PST)
Received: from [192.168.1.22] (99-0-9-164.lightspeed.frokca.sbcglobal.net.
	[99.0.9.164]) by smtp.gmail.com with ESMTPSA id
	by2sm20814980pab.20.2015.12.10.13.32.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 10 Dec 2015 13:32:27 -0800 (PST)
To: Michael Habibi <mikehabibi@gmail.com>
References: <CAOsp8o9_bzZg5nYsPrqiCNOm+SBphZpwmY1eGqav2g2ULYCCSw@mail.gmail.com>
From: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Message-ID: <5669EF68.40408@mvista.com>
Date: Thu, 10 Dec 2015 13:32:24 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <CAOsp8o9_bzZg5nYsPrqiCNOm+SBphZpwmY1eGqav2g2ULYCCSw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Best practice for building a large amount of source files
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
X-List-Received-Date: Thu, 10 Dec 2015 21:32:34 -0000
Content-Type: multipart/alternative;
	boundary="------------000600000804030503000803"

--------------000600000804030503000803
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 12/10/2015 1:16 PM, Michael Habibi wrote:
> If I have some source I want to bring into my layer, for example:
>
> Recipe dir:
> meta-mylayer/recipes-management/myapplication/myapplication_1.0/<tons 
> of source files>
>
> What is the best option for adding all of these and compiling? As far 
> as I know, you have to do one of the following:
>
> 1) Use a fetch that fetches a tarball with all your source, or a repo 
> with all of your source
> 2) Use a million-line long SRC_URI assignment to include every file 
> that your application uses.
>
> Is there a third (or fourth) option that I may have missed?
Not necessarily best practice, but it is something that bitbake has 
supported.

If you create a directory under myapplication_1.0 that is unique and not 
an override, you can specify the directory name
as the SRC_URI and bitbake will pull the directory and its contents in.

Something like 
meta-mylayer/recipes-management/myapplication/myapplication_1.0/mysources/<tons 
of source files>

and SRC_URI file://mysources

It should work.

Something like the following:

 > find recipes/
recipes/
recipes/myapp
recipes/myapp/files
recipes/myapp/files/mysources
recipes/myapp/files/mysources/Makefile
recipes/myapp/myapp_1.0.bb
 > cat recipes/myapp/myapp_1.0.bb
LICENSE="MIT"
LIC_FILES_CHKSUM = 
"file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

SRC_URI = "file://mysources"

S="${WORKDIR}/mysources"

>
> Michael
>
>
>
>

-- 
Jeremy A. Puhlman
jpuhlman@mvista.com


--------------000600000804030503000803
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <br>
    <br>
    <div class="moz-cite-prefix">On 12/10/2015 1:16 PM, Michael Habibi
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAOsp8o9_bzZg5nYsPrqiCNOm+SBphZpwmY1eGqav2g2ULYCCSw@mail.gmail.com"
      type="cite">
      <div dir="ltr">If I have some source I want to bring into my
        layer, for example:
        <div><br>
        </div>
        <div>Recipe dir:</div>
        <div>meta-mylayer/recipes-management/myapplication/myapplication_1.0/&lt;tons
          of source files&gt;</div>
        <div><br>
        </div>
        <div>What is the best option for adding all of these and
          compiling? As far as I know, you have to do one of the
          following:</div>
        <div><br>
        </div>
        <div>1) Use a fetch that fetches a tarball with all your source,
          or a repo with all of your source</div>
        <div>2) Use a million-line long SRC_URI assignment to include
          every file that your application uses.</div>
        <div><br>
        </div>
        <div>Is there a third (or fourth) option that I may have missed?</div>
      </div>
    </blockquote>
    Not necessarily best practice, but it is something that bitbake has
    supported.<br>
    <br>
    If you create a directory under myapplication_1.0 that is unique and
    not an override, you can specify the directory name<br>
    as the SRC_URI and bitbake will pull the directory and its contents
    in.<br>
    <br>
    Something like
    meta-mylayer/recipes-management/myapplication/myapplication_1.0/mysources/&lt;tons
    of source files&gt;<br>
    <br>
    and SRC_URI <a class="moz-txt-link-freetext" href="file://mysources">file://mysources</a><br>
    <br>
    It should work.<br>
    <br>
    Something like the following:<br>
    <br>
    &gt; find recipes/<br>
    recipes/<br>
    recipes/myapp<br>
    recipes/myapp/files<br>
    recipes/myapp/files/mysources<br>
    recipes/myapp/files/mysources/Makefile<br>
    recipes/myapp/myapp_1.0.bb<br>
    &gt; cat recipes/myapp/myapp_1.0.bb<br>
    LICENSE="MIT"<br>
    LIC_FILES_CHKSUM =
<a class="moz-txt-link-rfc2396E" href="file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420">"file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"</a><br>
    <br>
    SRC_URI = <a class="moz-txt-link-rfc2396E" href="file://mysources">"file://mysources"</a><br>
    <br>
    S="${WORKDIR}/mysources"<br>
    <br>
    <blockquote
cite="mid:CAOsp8o9_bzZg5nYsPrqiCNOm+SBphZpwmY1eGqav2g2ULYCCSw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><br>
        </div>
        <div>Michael</div>
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Jeremy A. Puhlman
<a class="moz-txt-link-abbreviated" href="mailto:jpuhlman@mvista.com">jpuhlman@mvista.com</a>
</pre>
  </body>
</html>

--------------000600000804030503000803--
