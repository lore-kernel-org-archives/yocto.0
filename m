Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D09EEE00E0B; Mon, 15 Jan 2018 23:21:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.17.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 304 seconds by postgrey-1.32 at yocto-www;
	Mon, 15 Jan 2018 23:21:06 PST
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F12BE00B5F
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 23:21:05 -0800 (PST)
Received: from null ([172.19.246.16]) by mrelayeu.kundenserver.de (mreue103
	[212.227.15.179]) with ESMTPSA (Nemesis) id 0MhO2U-1eFyrq1DsI-00Mals;
	Tue, 16 Jan 2018 08:16:00 +0100
Date: Tue, 16 Jan 2018 07:16:00 +0000 (GMT)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: Andre McCurdy <armccurdy@gmail.com>
Message-ID: <305199908.149295.1516086960139@email.1and1.co.uk>
In-Reply-To: <CAJ86T=V6f6UzzQcj9PFcGLmUaUxWAUY_Hrn0VSabvZ076152pQ@mail.gmail.com>
References: <092e01d38e13$32290bf0$967b23d0$@ln-systems.com>
	<CAJ86T=V6f6UzzQcj9PFcGLmUaUxWAUY_Hrn0VSabvZ076152pQ@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev20
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:ruUBsg8BIYxaEWREiQMgcnkpFRDu94qku8m9YUFHHb7mVdB16Mm
	Ps1bRV+b1+JcHtsiN4Ni9JsG5IHnINTbAFftnIUQD1FyNcFbOtkdhStHhUCyusIB64UFQT1
	yoJ3krj4SAaMrRjP/er+tlHpFQl+CMJ54zj5qdgPd1Z6KcQz9tMKXer/+QxiOwH7G6CW/tp
	li41rpQNB5QqeZa+DEqjg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:WvCmDfdyiHw=:9FyqBq1nnlj/cwdbnDE9lO
	GITrwrHmLCxbKaNeaBMB1PvOi0iiD4Oz6yrfxg4dYzMYu+QZ45OC0jO4lKlb5LBJ40IpkYq2B
	O7zlBz3/adCE0jdDz/RGmVKteCSVgwgFn0zOk20ScmH0lgExd+T/LiHj1OoVe8f6kuL0X6HkA
	saDkmK4V+HVSYXhMNa3qrDmvDMnOOx4ngq14gkfFgWhmyPX0PD4LBK402LlFU1trwx+X40588
	tiQ+PCyhJ1DKQXht3eUHlDK+rShyPtTlBUHhVBd/LjhHsUcNUOatXCxfMHPpqrJZZcGE5/St+
	iw6pZ/HXHFMvxTPWMAB/CFR2ohVv+zYDONZML431n7lTi1UDF62WoNx2K5FF1shwCbQxNrrUi
	xMeXyf/dg3r5iYeRUYVdYZ7DV6tLNqvHB/26YGlkn3N3nimWErJlOAFURCZcGKzHUGr1srhpO
	P3ZIEG7DH0QwtBbzdndNWLeHHfV8H6fo/SLS8P+pk/UsxOWZS9e0kIKjaG4GWbDQWqY5xpFGl
	KlV531njMv2yTWzYMn8Ir+R3Yb6lWKxRoNBsfe4+3eERE09Fqvgxp/Y7vvwPovF7ixZVRdYAo
	RdJLhKNTzRfR1DFgHyQwwLcuSH0bB9hRY1CbAGpqYGvdg3gx/mTvukhAe37RaPHIyE686fX1M
	EQtdLOnSy4HZPGGzFhG6Bx6uxzON+sNA1UrOfbZXM85/WRevuRnN0Bjhhx4pAAOJMAmb2PZnp
	+wFxS4wPVzoYYBU8+QH97zXoO8tcvfTsUoz0FZki2n5rMyfKGy6xY6CX130=
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: PROVIDES problem building u-boot variants
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Colin Helliwell <colin.helliwell@ln-systems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 16 Jan 2018 07:21:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> On 15 January 2018 at 20:01 Andre McCurdy wrote:
> 
> 
> On Mon, Jan 15, 2018 at 7:12 AM, wrote:
> > Let's see if I can explain this well...
> > 
> > I created a recipe to build a u-boot variant (for prod'n programming) -
> > "u-boot-PLATFORM-mfg-sec.bb" - which has :
> > 
> > require u-boot-PLATFORM.inc
> > UBOOT_MACHINE = "tx6s-8035_mfg_sec_config"
> > SRC_URI += "file://tx6s-8035_mfg_sec_defconfig"
> > 
> > And 'bitbake u-boot-PLATFORM-mfg-sec' works ok with this.
> > 
> > Now I want to split this out into two different variants, for different
> > cpu's.
> > 
> > So I begin by renaming the recipe to "u-boot-PLATFORM_tx6s-mfg-sec.bb",
> > But 'bitbake u-boot-PLATFORM_tx6s-mfg-sec' throws:
> >  "Nothing PROVIDES 'u-boot- PLATFORM_tx6s-mfg-sec'"
> > 
> > Can't spot why this simple renaming is breaking things...?
> 
> You tried to use an underscore in the recipe name.
> 
> u-boot-PLATFORM_tx6s-mfg-sec.bb will be treated as version
> "tx6s-mfg-sec" of the "u-boot-PLATFORM" recipe.

Ah, of course. Thanks.

