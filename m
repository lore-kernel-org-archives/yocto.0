Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F697E00815; Thu, 19 Feb 2015 05:52:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.42 listed in list.dnswl.org]
Received: from mail-qa0-f42.google.com (mail-qa0-f42.google.com
	[209.85.216.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D46A5E0034A
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 05:52:06 -0800 (PST)
Received: by mail-qa0-f42.google.com with SMTP id w8so5666786qac.1
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 05:52:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=2p/+qm52mZ/L1WwzMLwoMM/gpNxmMRZo4gpFhMk4I5k=;
	b=D64I6Vcfrpvrcxl3H40rJn9GBLEqlsSeX+2NCpY+8p0O2fmuRmPUMgCk/OJl5a3JLo
	agu0l+aQSuPTrIDjeOjV1ebRU7TGUsqmTlskbZEL5Ik06U+oTOMwiKKhYvdr+RWlt0mw
	sbMCxUBvvp6RxSbEmSFwL2G5UtFOMUq/uFiE9iPVjUnE+LP6F8SrbQlzC7Om6q9P4nsP
	SzpL93lwL55XBhj6bIC89C7lnUNVDgz6ryAANOD5v2vP5UM6cM72Q18knozvWICOYZXc
	ttHpcZpxN4xPwZZThfsV9CE54oAJR4YZ5brrwsYlFwI8BUAu/EWozqEwR/9lW7TBy+Pb
	QA2Q==
X-Gm-Message-State: ALoCoQlCFHd3nfClckfnSNgSfzwEHEFvH3objMa7f30+8FjDTcKvbJALCNj6i1x1WPVbseFRFysL
X-Received: by 10.140.92.161 with SMTP id b30mr11507553qge.59.1424353926104;
	Thu, 19 Feb 2015 05:52:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Thu, 19 Feb 2015 05:51:44 -0800 (PST)
In-Reply-To: <CAB1xj1Kv33y+pw4RhwFNB2HCQFdTMroR6yUVAe+VYe0nwAD=-A@mail.gmail.com>
References: <CAB1xj1Kv33y+pw4RhwFNB2HCQFdTMroR6yUVAe+VYe0nwAD=-A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 19 Feb 2015 13:51:44 +0000
Message-ID: <CAJTo0LZ+u_9TtUvounhJTOqu_Xyi+0URj2JWJNX0bSxzagtZYg@mail.gmail.com>
To: Pavel Daniel <daniel.pavel19@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Busybox error
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
X-List-Received-Date: Thu, 19 Feb 2015 13:52:07 -0000
Content-Type: multipart/alternative; boundary=001a1139baf0cce3cd050f713d40

--001a1139baf0cce3cd050f713d40
Content-Type: text/plain; charset=UTF-8

On 19 February 2015 at 13:43, Pavel Daniel <daniel.pavel19@gmail.com> wrote:

> ERROR: Function failed: SYSTEMD_SERVICE_busybox-syslog value
> busybox-syslog.service does not exist


meta-ivi disables busybox's syslog building but doesn't stop the systemd
packaging from happening, which then fails.  You can probably work around
this by adding SYSTEMD_PACKAGES="" to the busybox bbappend in meta-ivi, and
I recommend contacting the maintainers through the correct mailing list
(see the meta-ivi MAINTAINERS file for details).

Ross

--001a1139baf0cce3cd050f713d40
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 19 February 2015 at 13:43, Pavel Daniel <span dir=3D"ltr">&lt;<a href=3D=
"mailto:daniel.pavel19@gmail.com" target=3D"_blank">daniel.pavel19@gmail.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">ERROR: Function f=
ailed: SYSTEMD_SERVICE_busybox-syslog value busybox-syslog.service does not=
 exist</blockquote></div><br>meta-ivi disables busybox&#39;s syslog buildin=
g but doesn&#39;t stop the systemd packaging from happening, which then fai=
ls.=C2=A0 You can probably work around this by adding SYSTEMD_PACKAGES=3D&q=
uot;&quot; to the busybox bbappend in meta-ivi, and I recommend contacting =
the maintainers through the correct mailing list (see the meta-ivi MAINTAIN=
ERS file for details).</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>

--001a1139baf0cce3cd050f713d40--
