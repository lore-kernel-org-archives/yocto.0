Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17901E00C61; Tue, 29 May 2018 12:41:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f177.google.com (mail-qt0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14D14E00AD8
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 12:41:13 -0700 (PDT)
Received: by mail-qt0-f177.google.com with SMTP id c2-v6so20219205qtn.9
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 12:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7NuBYCVnIB3lViTtM5NuSj2/LGuE9K9dq+4KArgDUpo=;
	b=Hg9iVC6T9b6+e4owk87ueCGfzB5n/8GIaNJpPjwxSD3F7ebI8QupUc5KW/JgHg1xWV
	JzuFVBpuv4yn5SfMLAMLbWQLzJ4S2ku8+hJS4Iepj5KaY8ha1A9JwTHfSAMlAZc2Hu5p
	X5vNGQSlWVZicKVrCphM6SPtZSuNvEKH0ZRZYzhKvdBv1XobK2n73ceqxglXiT0wlj/P
	wmODtZKqxi+twJ3+BDp9mwXu2nbWHuteXh5z6XH87CP/xB7OJD/1qq9wsMdorhTiD5Sh
	hChAjnGL+n5Ngz1nnCveyvbI3zhdm+ahkBMsBvj4bHLMNEcuCtxzStZ+Zf9UefC5wnBE
	Pz6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7NuBYCVnIB3lViTtM5NuSj2/LGuE9K9dq+4KArgDUpo=;
	b=iiHwSXoKCfNd+Ba6JWqCRiz0D8YyQPjjHXIbNIboOkgONdpexDwjEla9K8C/T69+G/
	WtXZoAcW4ObXyPhTrJJp0Bysvzwnya78FH8eBcxnCqPRFPMcXwAPTI1l+Kj1pTWI778A
	BXHAVZ1jOh0Vt1mxrxLmVcdXFkgKW8lp19uD9euErQ4eBnSotF4qDYHSptWGdIyjGrGi
	9/knR+50lDBuVSSxm+aHxZ1mtnmnxpn0TKssoJ3joiBzvJMaGDy3ftGJCfFfLBE32GNO
	0X+ZVG5I/aQIspIU6u7Hv7VAq/QuqIx+dKbWFDo1H2dn+7+5OWTEM2haBB5w0lsqlefX
	NjiQ==
X-Gm-Message-State: ALKqPwcSzXYi6kWcjs1zQd2Eq8ovfMo3XiSd00N0aHIlRo13l1mBXzxJ
	BTTegzBtEhEoT3ZZJBb6X0oy0aFWIKycpfBIKQU=
X-Google-Smtp-Source: ADUXVKLqD/9Ya7cKVE4gHFFlulGXv0oZ/1jN5D76pkc79Bq8iA2SmlKAeKZk5TsA3x5mpBOmJ/vHad0KkRJN1edtCAw=
X-Received: by 2002:a0c:b2c2:: with SMTP id
	d2-v6mr17272699qvf.16.1527622873020; 
	Tue, 29 May 2018 12:41:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:9a0f:0:0:0:0:0 with HTTP; Tue, 29 May 2018 12:40:42
	-0700 (PDT)
In-Reply-To: <CAFNP8Os4zOcGhTU7EV8_YrWFu=8-jPLqTMvb+VQgN6BhgN9FDw@mail.gmail.com>
References: <CAJqXeOwTyTasp31EapH2jO8WFmY-Tz-CjDp2CAUpcs=3Dxsqhg@mail.gmail.com>
	<CAFNP8Os4zOcGhTU7EV8_YrWFu=8-jPLqTMvb+VQgN6BhgN9FDw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 29 May 2018 12:40:42 -0700
Message-ID: <CAMKF1srchCKb0DMZdX11YJDcUDXwnWsuYf0aQe=riNJhfbOAoA@mail.gmail.com>
To: Scott Rifenbark <srifenbark@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto
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
X-List-Received-Date: Tue, 29 May 2018 19:41:15 -0000
Content-Type: text/plain; charset="UTF-8"

I think you can effectively build your own image with QT, it seems to
me thats what you are interested in. For that
you would be able to create a new recipe which includes the
core-image-minimal recipe and then adds the needed
QT packages and packagegroups via CORE_IMAGE_EXTRA_INSTALL.

On Fri, May 25, 2018 at 6:18 AM, Scott Rifenbark <srifenbark@gmail.com> wrote:
> Hi Nikhil,
>
> I am forwarding your email to the Yocto Project email group.  Someone there
> can better help you with your questions.  I take care of the Yocto manual
> set.
>
> Thanks,
> Scott Rifenbark
>
> ---------- Forwarded message ---------
> From: nikh kkvv <nikhkkv@gmail.com>
> Date: Fri, May 25, 2018, 6:03 AM
> Subject: Yocto
> To: <srifenbark@gmail.com>
>
>
> Hi srifenbark,
>
>
> I am Nikhil working as soft ware engineer in kerala.
>
> Currently i am working with a project which require yocto based file system.
> I am using sama5d36-xplained evaluation kit.
>
> Based on the information from the following site
> http://www.at91.com/linux4sam/bin/view/Linux4SAM/YoctoProject build a file
> system which support qt images and tested successfully.
>
> Is there any way to  avoid this demo images from this build and add qt
> support for bitbake core-image minimal process.
>
>
> Regards
> Nikhil
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

