Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33F10E00757; Fri,  6 Feb 2015 09:20:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04991E00342
	for <yocto@yoctoproject.org>; Fri,  6 Feb 2015 09:20:24 -0800 (PST)
Received: by mail-pa0-f47.google.com with SMTP id lj1so18483755pab.6
	for <yocto@yoctoproject.org>; Fri, 06 Feb 2015 09:20:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:openpgp:content-type;
	bh=9Czw8SlFU7Ejc1RIzO6ur2NLqLW+rfScd3mNK44zghY=;
	b=NK/yIX3V9ILsnyZVghJ3afEnd78aAo+Z925AWPmKCEijFAc0rOZjpsiw9mu6V4+ra9
	GxtI3BYN4s3XW9HGccbd2mlLq5vmcqwIFh7Xs+r7vheovI5asLxG1wpy6RrFLplW+Tp5
	dSrLwX7JWlSwtHydEcReScwQkx5RXvGiyVOQU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:message-id:date:from:user-agent
	:mime-version:to:subject:references:in-reply-to:openpgp:content-type;
	bh=9Czw8SlFU7Ejc1RIzO6ur2NLqLW+rfScd3mNK44zghY=;
	b=Onitc+28SYy1VxYnIS8VZ8+/z10K1X8etbdFUsDArAyfTEK7SkdhcDFxsf+G1R5Jms
	MiT1W2LTc9xRRPD1ATzaEcWwtoEvOXYiUfcIeJgNVeJGrw9Yc/f0RuQAc5iFYW5UuSqS
	AcPiVQwMB3RKQhdhYLMAywiZgfGELbKGQpyUJFlVq+L0LkJdgLzr4eA9k9ruPXvYVjZz
	t4MOwBX75Yv9rdtwAaMJ/VoPoKgKb1ybh7L51u/BMIB84aSNBj/nhnrjJKjraVJPCB56
	1wFBKbqOwlJr7D89LbXNd1UnemycaFhsrpluYjEO6mJg8OLYSfcbN4lVotDwMxPtUpXT
	TKJw==
X-Gm-Message-State: ALoCoQnbfSUDshFgklqIZHY51pIbP1hWAzoMvcgzDb/jCuybtZ+2J4V1GmPscx03za5dsAbap55t
X-Received: by 10.70.54.168 with SMTP id k8mr7365371pdp.87.1423243223802;
	Fri, 06 Feb 2015 09:20:23 -0800 (PST)
Received: from pride.local ([2001:470:b:16e:6680:99ff:fe39:40a4])
	by mx.google.com with ESMTPSA id ms5sm8599292pbb.59.2015.02.06.09.20.22
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 06 Feb 2015 09:20:23 -0800 (PST)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <54D4F7D6.9040306@yoctoproject.org>
Date: Fri, 06 Feb 2015 09:20:22 -0800
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAHj6CF8sBX8aYCh1zyWiCXZMsNd+30gCc+A5E-N6SMNdbf1WTQ@mail.gmail.com>
In-Reply-To: <CAHj6CF8sBX8aYCh1zyWiCXZMsNd+30gCc+A5E-N6SMNdbf1WTQ@mail.gmail.com>
OpenPGP: id=01861969
Subject: Re: http://adtrepo.yoctoproject.org Not Found
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
X-List-Received-Date: Fri, 06 Feb 2015 17:20:29 -0000
Content-Type: multipart/alternative;
	boundary="------------020501080102060805040807"

--------------020501080102060805040807
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Just an update. This was also posted to the yocto-infrastructure list
and handled there. ADT repos are all online again.

Michael Halstead
Yocto Project / SysAdmin

On 02/03/2015 05:15 AM, Gabo wrote:
> Hallo,
> it seems the server http://adtrepo.yoctoproject.org  does not respond
> correcty (Page Not Found 404)
>
> this is the output of adt-installer script
>
> --2015-02-03 10:12:11--  http://adtrepo.yoctoproject.org/1.6.1
> Resolving adtrepo.yoctoproject.org <http://adtrepo.yoctoproject.org>
> (adtrepo.yoctoproject.org <http://adtrepo.yoctoproject.org>)...
> 140.211.169.59
> Connecting to adtrepo.yoctoproject.org
> <http://adtrepo.yoctoproject.org> (adtrepo.yoctoproject.org
> <http://adtrepo.yoctoproject.org>)|140.211.169.59|:80... connected.
> HTTP request sent, awaiting response... 404 Not Found
> 2015-02-03 10:12:11 ERROR 404: Not Found.
>
> Is there any problem?
> thank you
> Gabriele
>
>


--------------020501080102060805040807
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Just an update. This was also posted to
      the yocto-infrastructure list and handled there. ADT repos are all
      online again.<br>
      <pre class="moz-signature" cols="72">Michael Halstead
Yocto Project / SysAdmin</pre>
      On 02/03/2015 05:15 AM, Gabo wrote:<br>
    </div>
    <blockquote
cite="mid:CAHj6CF8sBX8aYCh1zyWiCXZMsNd+30gCc+A5E-N6SMNdbf1WTQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Hallo,<br>
        </div>
        <div>it seems the server <a moz-do-not-send="true"
            href="http://adtrepo.yoctoproject.org" target="_blank">http://adtrepo.yoctoproject.org</a> 
          does not respond correcty (Page Not Found 404)<br>
          <br>
        </div>
        <div>this is the output of adt-installer script<br>
          <br>
          --2015-02-03 10:12:11--  <a moz-do-not-send="true"
            href="http://adtrepo.yoctoproject.org/1.6.1" target="_blank">http://adtrepo.yoctoproject.org/1.6.1</a><br>
          Resolving <a moz-do-not-send="true"
            href="http://adtrepo.yoctoproject.org" target="_blank">adtrepo.yoctoproject.org</a>
          (<a moz-do-not-send="true"
            href="http://adtrepo.yoctoproject.org" target="_blank">adtrepo.yoctoproject.org</a>)...
          140.211.169.59<br>
          Connecting to <a moz-do-not-send="true"
            href="http://adtrepo.yoctoproject.org" target="_blank">adtrepo.yoctoproject.org</a>
          (<a moz-do-not-send="true"
            href="http://adtrepo.yoctoproject.org" target="_blank">adtrepo.yoctoproject.org</a>)|140.211.169.59|:80...
          connected.<br>
          HTTP request sent, awaiting response... 404 Not Found<br>
          2015-02-03 10:12:11 ERROR 404: Not Found.<br>
          <br>
        </div>
        <div>Is there any problem?<br>
        </div>
        <div>thank you <br>
        </div>
        Gabriele</div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------020501080102060805040807--
