Return-Path: <cliff.brake@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2CCDE003FA; Fri, 18 Jul 2014 06:51:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FD5EE00342
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 06:50:56 -0700 (PDT)
Received: by mail-qg0-f53.google.com with SMTP id q107so3150726qgd.26
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 06:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=zaof1zFesayXPQJG+01rVUlzTmHtmx7f/+fiU3o0T40=;
	b=SgmdUOenjJ4ejzEADGWn8bMlnjUOqQagOqImDgAElXzW71Z3qSKTNyBDtg+SEcQ3UU
	wBmEnaXOgaNsf8G+fZWZK1mqu0LBmgVDz9McV//x2r0aAPCufb4sQ/8vvkSKibhydIG+
	judhgXXlxRWHAWFGQTB6rm+oTmC5AU20wIOYKUJchFRaDLUHPXktDO/LuhJuVQh1YQ49
	UhW8mBsGRJYxdx28fkQ97t9cmZGvBCbjq7+uVxOb/2t9YpmhXoE25DFCock4fxiAfNvA
	dTmHNkeWU9DiRpInGDoFzqI+K4efJ+SUdXcN/nL5gYLT4NeR45kzfZAtmkGJfIdGLw26
	5uJA==
MIME-Version: 1.0
X-Received: by 10.224.71.198 with SMTP id i6mr8702828qaj.76.1405691452500;
	Fri, 18 Jul 2014 06:50:52 -0700 (PDT)
Sender: cliff.brake@gmail.com
Received: by 10.140.80.42 with HTTP; Fri, 18 Jul 2014 06:50:52 -0700 (PDT)
In-Reply-To: <53C8E4ED.9090909@dexonsystems.com>
References: <53C8E4ED.9090909@dexonsystems.com>
Date: Fri, 18 Jul 2014 09:50:52 -0400
X-Google-Sender-Auth: rD6KiRPaTopKF8Sb0Yyzqa7iSDA
Message-ID: <CAOd_LFzZkh4WHk52vVSibhhTx9GjGfhjsSP9AuzorMhCrE7VLA@mail.gmail.com>
From: Cliff Brake <cbrake@bec-systems.com>
To: dexon_test <dexon1@dexonsystems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: add custom application into a image
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
X-List-Received-Date: Fri, 18 Jul 2014 13:51:00 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 18, 2014 at 5:12 AM, dexon_test <dexon1@dexonsystems.com> wrote:

> }
>
> 3. bitbake -c build dxatmel
>
>    -> I hit this error msg: Not found *.pro file in the working directory

At this point, you'll likely need to cd in the
tmp/work/..../dxatmel../ directory.  Then you can look at the script
that is doing the compile (temp/run.do_compile) and figure out what is
wrong.  I suspect its a directory naming issue or something.

Cliff

