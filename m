Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11B34E00779; Fri, 20 Mar 2015 03:15:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51394E0076B
	for <yocto@yoctoproject.org>; Fri, 20 Mar 2015 03:15:53 -0700 (PDT)
Received: by wgra20 with SMTP id a20so85236817wgr.3
	for <yocto@yoctoproject.org>; Fri, 20 Mar 2015 03:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=XB9WZvrE5F55gJRIzgMIdOfEeUi3/pswM4yQqaEpOdU=;
	b=TenGhoKx62ipKBb9sDvYdjRuOhqTnepT7Jm808VOcliE4sjTiAzys9JX4h4lxYk0Kl
	MnRnUNaqjEmiiXCVoGOb2R66FlxBXGF4eBv0iUgZvdmgfIOxm8xZsvznpgMg/Ls6BVTl
	sGbJmX/bQUy01x8e9dc6es5rS8tEbwgAubMRTfHZFi7LHSHN6CUiKT+5AL1+DJVx+st0
	qeRpN6EQ24eNfU+ct8fOKbSYrN/7sFpixcDe4U5rlgBWzgtZWHC6BFize9KBkBiITv/y
	z1XGXSpC4dFEdJTjT2RWaM++RIL07RlnFJsc30w9XwmWIqSShMiifbxKBctCfHP0L5uj
	TPAg==
MIME-Version: 1.0
X-Received: by 10.194.20.67 with SMTP id l3mr156641607wje.94.1426846552910;
	Fri, 20 Mar 2015 03:15:52 -0700 (PDT)
Received: by 10.28.182.65 with HTTP; Fri, 20 Mar 2015 03:15:52 -0700 (PDT)
In-Reply-To: <550BDF86.4040706@dynamicdevices.co.uk>
References: <CAA2DH4v8kvV6SoEM4aeCBrY=nP6hF83Nde05jeM56_oMr1zn-A@mail.gmail.com>
	<550BDF86.4040706@dynamicdevices.co.uk>
Date: Fri, 20 Mar 2015 15:45:52 +0530
Message-ID: <CAA2DH4sioAGo95HRzHGyiYGHiDunUhStFM8v9KsqPUQJznRMcg@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: yocto@yoctoproject.org
Subject: Re: Embedded Linux Package Management
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
X-List-Received-Date: Fri, 20 Mar 2015 10:15:55 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 20, 2015 at 2:21 PM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
>
>
> On 20/03/2015 09:34, Prasant J wrote:
>
> Hi,
>
> I'm looking for package management for my embedded linux systems
> (yocto on armv7 iMX6Q)
>
>
> I'm looking for the following features:
>
> (a) Install & remove a package
> (b) Install packages and its dependencies
> (c) Install a package with conflicts, such that the conflicting
> package is force removed
> (d) A local location with packages should serve as a package source
> (e) Remote server package (http file server based)
> (f) List of my packages installed
> (g) List of my packages not installed but available on the http file server
> (h) List of my packages that have updates (new version)
> (i) To be able to manage packages for multiple architectures (eg. rpm
> can produce packages for multiple architectures using one spec file)
>
>
> The above features will be invoked by the application GUI.
> Any suggestions: which package management solution would answer all
> the above use cases?
>
>
>
> (e) I use smart + RPM. I have a remote package server setup via this in
> local.conf
>
> FEED_DEPLOYDIR_BASE_URI = "http://packages.foo.bar"
>
> Then I'm rsyncing the files up to the server after a bitbake package-index.
>
> Then smart update / search / install
>
> That seems to work well in my testing.
>


Hi Alex,

Thanks for inputs!

Is smart development stopped?

When I look at their mailing list it, the last posts were in Nov 2014.
It looks like no more development for smart package manager. I would
then tend to say that it will not be a right way for me.


Regards, Pj

