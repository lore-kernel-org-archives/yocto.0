Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81F08E008BC; Mon,  2 Feb 2015 09:15:27 -0800 (PST)
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
	*      [209.85.216.178 listed in list.dnswl.org]
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57C3AE0086F
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 09:15:16 -0800 (PST)
Received: by mail-qc0-f178.google.com with SMTP id b13so31254160qcw.9
	for <yocto@yoctoproject.org>; Mon, 02 Feb 2015 09:15:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=bI6YtD409n0AXyJRmPkHmaZYEjTt8oYtebdLuhoPQ/M=;
	b=gnuYZjT4KG6iQiJ6dUpYWlgx6lXSYNo0L/L+vPs3+hcFs2Bq8VRNifSuwX2znKb00B
	+HFRsjeX9qnGG8pjwGE7S8B4YnFjynsJiRxhX1djcpyS9HxJWn3Kj8k3xLYW8mKWvLAy
	fN/b/xlqAKgHHHvuLMfUjG2/x0WWhq5o/NY/UoJDr/CX23lceN4MfF8kW5MWTGCvK252
	rzP812oc1RG3RZP21r7frc6JCazJVHBjIXGXf8EMaaqFsjYnVs+3aV/Y24KBghkckvNG
	MyJc9c0y6nsh5Z9MhPOatCiCTafd8O/KL2/JrFBIycGitgkEWQQz9JPUFuEhCOb8ATKN
	ELXw==
X-Gm-Message-State: ALoCoQl7eEsUQKRt3fM6z/joEkH00u7k+QxumN9EMzSSRKx4A+6ckbmZnotwrQZ9xr9YWOZM/PMO
X-Received: by 10.224.97.72 with SMTP id k8mr44018237qan.52.1422897315469;
	Mon, 02 Feb 2015 09:15:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Mon, 2 Feb 2015 09:14:55 -0800 (PST)
In-Reply-To: <2901044.jggIWX4TSM@peggleto-mobl5.ger.corp.intel.com>
References: <F38A866CD026F746A3BF0928A84397BE3A33DC69@AZ-FFEXMB01.global.avaya.com>
	<1549714.p2uxOlTH7e@peggleto-mobl5.ger.corp.intel.com>
	<F38A866CD026F746A3BF0928A84397BE3A33DDE8@AZ-FFEXMB01.global.avaya.com>
	<2901044.jggIWX4TSM@peggleto-mobl5.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 2 Feb 2015 17:14:55 +0000
Message-ID: <CAJTo0LZwp_hAjjSw3Lae+3jHuEdh_Oz_XQH6FnCVd_ASNy7U_w@mail.gmail.com>
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Need help for custom recipe
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
X-List-Received-Date: Mon, 02 Feb 2015 17:15:27 -0000
Content-Type: multipart/alternative; boundary=001a11c2cb5a0a867e050e1e19fc

--001a11c2cb5a0a867e050e1e19fc
Content-Type: text/plain; charset=UTF-8

On 2 February 2015 at 16:54, Paul Eggleton <paul.eggleton@linux.intel.com>
wrote:

> I'd have to say this is something we don't support. If you want to do this
> you
> would need to disable the current packaging tasks and stage the package
> files
> yourself, but that's going to take almost as much work as converting over
> your
> postinstall scripts to be specified within the recipe. You would also lose
> all
> of the package QA checks that we currently run.
>

If you *really* want to do this then you'll probably need a custom
do_package to put the RPMs you've generated in the place that bitbake
expects them, or maybe a custom do_deploy.  At this point you're subverting
the system so you'll have to look at the default tasks to work out how they
operate and how to replace them.

Ross

--001a11c2cb5a0a867e050e1e19fc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 February 2015 at 16:54, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D=
"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linu=
x.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=
=3D":39u" class=3D"a3s" style=3D"overflow:hidden">I&#39;d have to say this =
is something we don&#39;t support. If you want to do this you<br>
would need to disable the current packaging tasks and stage the package fil=
es<br>
yourself, but that&#39;s going to take almost as much work as converting ov=
er your<br>
postinstall scripts to be specified within the recipe. You would also lose =
all<br>
of the package QA checks that we currently run.</div></blockquote></div><br=
>If you *really* want to do this then you&#39;ll probably need a custom do_=
package to put the RPMs you&#39;ve generated in the place that bitbake expe=
cts them, or maybe a custom do_deploy.=C2=A0 At this point you&#39;re subve=
rting the system so you&#39;ll have to look at the default tasks to work ou=
t how they operate and how to replace them.</div><div class=3D"gmail_extra"=
><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11c2cb5a0a867e050e1e19fc--
