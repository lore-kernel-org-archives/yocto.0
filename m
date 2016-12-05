Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15490E00CE0; Mon,  5 Dec 2016 07:08:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8005E00C15
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 07:08:05 -0800 (PST)
Received: by mail-lf0-f54.google.com with SMTP id t196so224505740lff.3
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2016 07:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mWCJv5WzET9/DBzaMkaHmjzdgXmHrdHb+HpNX+t6HTA=;
	b=vWVOIu4VmbKVN7WKdlA5QuBn28IAfC9RsNUVOQYQ/03UU5b7Q9K3IjvqMjX/Mtg9BT
	ckk2pcQg0XLPki6fetLf4fg5NX3kBJYCXysDTenRDLlzH4cix3YM2ZhnKCCebVftDP9i
	yYWiwPV2MWTnZlZoGT/53zjEM+4g0Kk/jDK9UlBbmPvjeAOQLnAIJa+rN588b1v5/xa8
	+0mUidoIWwGoImy5ZbYxZsVqVdMURwHvBQY2G6asIXp4+W9v+/opQdnVeIagCcKqTILa
	Clw5aiOx/Yls7pj7Dwqny/UrAD8syGZIJC6WmGT1Is2OZ0pFnFQByrg/o979YZWnd4gv
	fh8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mWCJv5WzET9/DBzaMkaHmjzdgXmHrdHb+HpNX+t6HTA=;
	b=PatwFsnq49MYHQOIy3mWD5Xk58vk28xSJPyddHoW1l1ySKbpGcNTwCrJ58d2cGoOvj
	9P/piU4BPgIgoe4Fw36QLyi1ih/teo6qKGXRdVGwd5p0QOVKW07XjCfnzhDxCgxFiwwl
	ez2y6EZuyaOuTNTDTqMHsSXlDKsAWPZ2rVN8Od/7uDoGO0NLzce/lz4cO+NRD9uahYaV
	PY2MvLuwQeQTbLahRku+94T+PeGLtt+SjZ1JNePH7GeCsQfeUbbPU84+3BG81pRldkKB
	zL0gWK0z7AJxNmZ8hPEY4wVQhSZQh7bD4yyEg1o3TLBCmT4Nsc3xC6c6Mwm+N8ax/QJk
	JfKQ==
X-Gm-Message-State: AKaTC02XU4mBTNeKIUAy45A19jrh6CM+rrP1OukIsXJ1lhZHdBu22i0sMfkZqxZnjpJz6Q7FJHjf42o/ReDmGA==
X-Received: by 10.46.69.6 with SMTP id s6mr25289303lja.42.1480950483771; Mon,
	05 Dec 2016 07:08:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.19.164 with HTTP; Mon, 5 Dec 2016 07:08:03 -0800 (PST)
In-Reply-To: <CAP71Wjz8ZyxjiFccPOD+Lcat0C1XN8OEW1-m2fxgeqGJD43aTQ@mail.gmail.com>
References: <CAJO0J4i-G+PxwaSqZzx0ovj2g-ZMR=Uy9RSnk2b=oji1sTX5gw@mail.gmail.com>
	<CAP71Wjw+L1C+5XrOYSMgHoCKnVu84uqf-s=ueUTEpZ=y0B9+Hg@mail.gmail.com>
	<CAJO0J4iCk-Zw6xLf4zu7u_aGT5n9b=wctO17tQnRhiTD0k8nGg@mail.gmail.com>
	<CAP71WjxnZhor7seO+O0=t+n=iCLMONx8midCikPgBmBzuHcVxw@mail.gmail.com>
	<CAJO0J4g8CfC7keGjnuu9XbmFGZYuMs9n9uoQDQAqhQC=HrjLgw@mail.gmail.com>
	<CAP71Wjz8ZyxjiFccPOD+Lcat0C1XN8OEW1-m2fxgeqGJD43aTQ@mail.gmail.com>
From: Paulo Neves <ptsneves@gmail.com>
Date: Mon, 5 Dec 2016 15:08:03 +0000
Message-ID: <CAJO0J4i3Z9Mt=gp8AAHP1GfdRtJ_Hx1wQ+WJXeU7OPfsPYSgKw@mail.gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Using files from package dependencies
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
X-List-Received-Date: Mon, 05 Dec 2016 15:08:09 -0000
Content-Type: text/plain; charset=UTF-8

Hello Nicolas, thank you for your advice and hints but I "need" to
corrupt a bit the conventions of yocto and use specific package names
(due to compatibility with other older build systems)

The magic behind the fact that my special package sysroot directories
were not being moved to the yocto sysroot was due to the fact that
do_populate_sysroot does not match all the toplevel directories in
${D}. For additional directories sysroot_stage_all needs to be
appended with the desired directories. I am perfectly ok with that but
why not make a notification that there were directories that were
packaged but will not be expanded in the sysroots? The lack of
notification is extremely confusing, as files just do not appear where
they should.

A similar question to mine can be found here:
http://stackoverflow.com/questions/35354802/how-to-create-do-populate-sysroot-append-task-in-yocto/40976056#40976056

Best regards
Paulo Neves

On Mon, Dec 5, 2016 at 10:08 AM, Nicolas Dechesne
<nicolas.dechesne@linaro.org> wrote:
> On Mon, Dec 5, 2016 at 10:10 AM, Paulo Neves <ptsneves@gmail.com> wrote:
>> Sorry for my ambiguity. When I mentioned binaries I meant general
>> binary data, not necessarily executable. Their only need is that the
>> new recipe needs to be fed these data from the other package so it can
>> produce it's own output. This binary data only needs to be available
>> in the host pc, in the recipe bake.
>
> in that case, i suppose you can consider these 'binary files' as
> development files like other .h or libs, and package them in the -dev
> package of the dependency. You can control which files get into the
> -dev package using FILES_${PN}-dev in your recipe.

