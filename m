Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08023E009E7; Mon,  1 Oct 2018 01:01:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
	[209.85.208.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81551E008D9
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2018 01:01:13 -0700 (PDT)
Received: by mail-lj1-f173.google.com with SMTP id u21-v6so4156363lja.8
	for <yocto@yoctoproject.org>; Mon, 01 Oct 2018 01:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=F3ETnkGdRubIXcVwD3HsFUs/cXNXV2WPW36FvAp9Zg0=;
	b=YxaHIccd7UgF8I6es7UGIXeSta+RT4lJTeSBmniTG1JnGcyvYeKqlYh7NHJSxjlGGc
	Z3rP64QXvyQqSZBDWrt2KS4Q2VrIo9OzvUol0XgNE+micDt6noJkBlNBql6d/smgSl2o
	eZmfHpts1ofYUPbbel0bBsJprEqCSEXs5+J48=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=F3ETnkGdRubIXcVwD3HsFUs/cXNXV2WPW36FvAp9Zg0=;
	b=Yr1Aknq+RdTf0vzCUB3lCrREdV/XUGWoAvlJDIvD+zooP9WYHbmzPx1JYWaiWl6PSE
	xESGpUaOsXbPZr3US27YaDkur5FXRspiZCRyATAkIixjXN3P5yV5fvgPPjLZBQZTET7Y
	Cgn/e0amXYzi2nzLOOzm2Fb4bNP1o2fN7kiLRafb0itfH0GMGfjGC4wAMmSWyuPw365X
	Y/hEuX3ezn12hbPLqzORcEcpFCP4jX6mycGQhu5EtL9EZCHfsiAjgt+hgkfz+2H162SX
	gR9Xf4EBeHo3LFbGW4MKTAmead8kQtdek3Q0zbSwjEehv8/89OE9KisucM/aZZjBI5Wj
	w0ZA==
X-Gm-Message-State: ABuFfojA/Mz2iXw/TXZqoAorcGoN1rN0/UxWSM+9uyOEuSx946RNJthA
	WUNI6DfobBgjucKDGJPKJ3u5XiOhKyYXsVfHQLpQz6MQY5I=
X-Google-Smtp-Source: ACcGV61HcldAaW9m5pd/08nbnhnkUKX4aZ5Ja/iRQHM2Io01M8UldEIIOjiAuCG7i4fi71IrOeXyt8rbETDpozogfs4=
X-Received: by 2002:a2e:9448:: with SMTP id o8-v6mr5587904ljh.34.1538380872167;
	Mon, 01 Oct 2018 01:01:12 -0700 (PDT)
MIME-Version: 1.0
References: <053f87023fdf4190982b0595969a57c7@ifm.com>
In-Reply-To: <053f87023fdf4190982b0595969a57c7@ifm.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 1 Oct 2018 10:01:00 +0200
Message-ID: <CAP71WjwH3K+p8Q+G3S9N7sHdtrvTW3K3WS2pmP+TW1zwZLdZZg@mail.gmail.com>
To: Kamal.Pandey@ifm.com
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: upgrading packages in yocto
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
X-List-Received-Date: Mon, 01 Oct 2018 08:01:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 1, 2018 at 8:22 AM Pandey, Kamal <Kamal.Pandey@ifm.com> wrote:
>
> I want to upgrade some packages of poky/meta/recipes-graphics/ like westo=
n_2.0.0.bb to weston_4.0.0.bb. Also I don't want any changes to be made in =
poky/meta layer. What is the best way of doing these kinds of upgradations.=
 I think bbappend here will create problems as the SRC_URI and other variab=
les use the PV from recipe name to fulfil some operations.
> The other thing I can do is create a weston_4.0.0.bb file in my own custo=
m layer and work but then I don't know how to disable the older(original) w=
eston_2.0.0.bb file.
> What will be the best method to upgrade packages. One thing to remind you=
 that the SRC_URI is not a repository , it's a tarball repo. So I directly =
can't replace the SRC_URI in .bbappend file.
> Any leads regarding this will be appreciated.

You should get a new custom layer that holds the 4.0 recipe. It is a
bad idea to use a .bbappend since you are changing the version ($PV).
Note that upgrading one recipe might require that you update some
dependencies as well. You don't need to 'disable' the old recipe, it
will be overlaid anyways.

To give you an idea, this is how we manage 'backports' for our builds:
https://git.linaro.org/openembedded/meta-backports.git

>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> On =
Behalf Of yocto-request@yoctoproject.org
> Sent: 30 September 2018 00:30
> To: yocto@yoctoproject.org
> Subject: yocto Digest, Vol 96, Issue 79
>
> Send yocto mailing list submissions to
>         yocto@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoct=
oproject.org_listinfo_yocto&d=3DDwICAg&c=3DriR7jviByh3sGm7GIiSlHkFN0_aSATB6=
A8x0nHa2EM0&r=3DB4t2KSJ3IM1b9sK9gvCmTFe5JX-rxgD15fYh5lG11MM&m=3DZi9dlMz5JoZ=
fKdwcbr7eV_JK7qB8SJTPYP9LdRWnlG8&s=3DRQp-3-7SeXpR_ysQqD1qg5XYb2ycNNJlz5k63R=
sTovE&e=3D
> or, via email, send a message with subject or body 'help' to
>         yocto-request@yoctoproject.org
>
> You can reach the person managing the list at
>         yocto-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific than =
"Re: Contents of yocto digest..."
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

