Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1036FE00939; Tue, 14 Mar 2017 05:18:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.169 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3913E007EE
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 05:18:55 -0700 (PDT)
Received: by mail-qt0-f169.google.com with SMTP id r45so53820780qte.3
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 05:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=466bkN9hWaKOS+Kyd2V5G4wsCNSoCnCXGrjhGLFR/c4=;
	b=pTFLDBLmWkZaJ27N7xbBDoKR08EVzs7hFvV/RP/5/DD+tN9Try2A/C/5yWEPUybfDk
	aOt7HRZUZmVlzsue1sXbMBXOezQB5esdOlgcBWCn7jl9yxzUe56ErFZbOTseWhLfpF0P
	nPwBHm3oBwGptkIVNh0RR/bL9f5afErwEysdYPsmIkqc4zWHvIjWew2F+WMpoqD08tAC
	kBh5IWO0qqMbGRWIUjYtnbjD1SDdrlXbvtY8OXQFzZHoba1pt+ksrRqm54j5H7T4mSMx
	i2sFlmwJz5pSp5xivzZrkQJAtlMJX9EGNA3fsWF6VZrqIOTFqLurGv6VJYDnph1U/bvU
	NR8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=466bkN9hWaKOS+Kyd2V5G4wsCNSoCnCXGrjhGLFR/c4=;
	b=RdL1JaUzTmJrZGZZulWA8d3sR6BMspbvhbIQUDgaSD9MQr8wH12ihRtSPoc1TVbGc0
	nZIqY90mEcYwfbvDdcNbFF6+2HxTQp4n1gGC9C7fm+uWWYRNHUxU6eTq5EzzDUQcTMsP
	rIrfF2BLQUsJB2ACV7976CibGtON9VmM50AhrfUCtTYQ1KKclcsBOk1AnjLgxUB0/JBL
	GSQ9EjRG4JtbQ0gtbwxwjGRUga6q05wRCewSVzmqsGcpsCMrmfaYDomcjR5u35scUZIE
	9Ed5o6C1JymDaxrdK3Q8dM58jySzB3r2CNk+2A/R53AFucoVwwAyZ3GUkfuR4G9Q7AUC
	WAQg==
X-Gm-Message-State: AMke39mrxOJhJHULFbwC11a7vqKcwwgdAh4mRrkAADFF5cnNX29DjpCKa6Bj1sVHdLdKHVW+Qdt/TltMFFXUdJ1B
X-Received: by 10.237.42.164 with SMTP id t33mr40201136qtd.105.1489493934606; 
	Tue, 14 Mar 2017 05:18:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Tue, 14 Mar 2017 05:18:34 -0700 (PDT)
In-Reply-To: <5522f82d-9c98-30e0-dda6-2fe62e7a2a6f@mlbassoc.com>
References: <5522f82d-9c98-30e0-dda6-2fe62e7a2a6f@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 14 Mar 2017 12:18:34 +0000
Message-ID: <CAJTo0LZ83ZMrxJLwQgu43wWaTifDOo1+SO=qKWwY4Xhx032MAg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Confusing message
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
X-List-Received-Date: Tue, 14 Mar 2017 12:18:59 -0000
Content-Type: multipart/alternative; boundary=94eb2c0cfe22de551b054aafd471

--94eb2c0cfe22de551b054aafd471
Content-Type: text/plain; charset=UTF-8

On 14 March 2017 at 06:18, Gary Thomas <gary@mlbassoc.com> wrote:

>   NOTE: Tasks Summary: Attempted 574 tasks of which 507 didn't need to be
> rerun and all succeeded.
>

There were 574 tasks to execute.  507 could be skipped (ie m4:do_fetch
:do_unpack :do_patch etc when you already have m4 deployed).  All of the
tasks succeeded (skipping is success).

Ross

--94eb2c0cfe22de551b054aafd471
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 March 2017 at 06:18, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div id=3D"m_-466266430784013444:1d=
h" class=3D"m_-466266430784013444a3s m_-466266430784013444aXjCH m_-46626643=
0784013444m15acb7a74f602336">=C2=A0 NOTE: Tasks Summary: Attempted 574 task=
s of which 507 didn&#39;t need to be rerun and all succeeded.<br></div></bl=
ockquote></div><br>There were 574 tasks to execute. =C2=A0507 could be skip=
ped (ie m4:do_fetch :do_unpack :do_patch etc when you already have m4 deplo=
yed).=C2=A0 All of the tasks succeeded (skipping is success).</div><div cla=
ss=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--94eb2c0cfe22de551b054aafd471--
