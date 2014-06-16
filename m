Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93703E00B4C; Mon, 16 Jun 2014 00:50:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.176 listed in list.dnswl.org]
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36714E00AEE
	for <yocto@yoctoproject.org>; Mon, 16 Jun 2014 00:50:38 -0700 (PDT)
Received: by mail-ob0-f176.google.com with SMTP id wm4so4518988obc.35
	for <yocto@yoctoproject.org>; Mon, 16 Jun 2014 00:50:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=cPWSOvmZ9oZ2prddmElNeOHgtzLwo32boPZRGgPCGBY=;
	b=g4+RuhKTa3nlqKU7MdM9TxawV5Myrytt4XVp8sLUwUH3RpFHgGTFJ88XHi5zrBoud2
	AapLA284G94m48SPm4mOzHrmU4Q6ZIVOuN/8usQ0bQazN7rDtKxxK77H4nseavwQGNMw
	bYO6nVjExrp4urlW+0Mvf6lcUaP5n/vYbMdT4bSbUhxBiZVjo/SYy6/fTSd6aUiJ0u9W
	D+fff9K7maNJEx9NkSLqOaTyZr1cMi7cz6FQRjua/IK8rHjPySlS9ccmCyI5rR/xKxjT
	/Prmv/3juLBNTO4FmAOcTfyGdixtXJPrRptjpmzNy1UUtcmQzI1p8pb08INXUgsgKqvJ
	TFzg==
X-Gm-Message-State: ALoCoQmXOcuyhImYtCdtswoBb2L0y64prsa411MphueOgdV5CpBLERI2Bp23l8+E9vBdzSYNiHGX
X-Received: by 10.60.73.97 with SMTP id k1mr6652735oev.54.1402905037703; Mon,
	16 Jun 2014 00:50:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.115.164 with HTTP; Mon, 16 Jun 2014 00:50:17 -0700 (PDT)
In-Reply-To: <9AD1F2A584A7644C9605656D538412FEAA5214@G08CNEXMBPEKD03.g08.fujitsu.local>
References: <9AD1F2A584A7644C9605656D538412FEAA5214@G08CNEXMBPEKD03.g08.fujitsu.local>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 16 Jun 2014 09:50:17 +0200
Message-ID: <CAP71Wjwn9eHV2w05w1wF5sNWb68v=tkf4v0a0M+iGQgO59oySA@mail.gmail.com>
To: "yaoxp@cn.fujitsu.com" <yaoxp@cn.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: I want to know which BB files were compiled
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
X-List-Received-Date: Mon, 16 Jun 2014 07:50:44 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 16, 2014 at 5:27 AM, yaoxp@cn.fujitsu.com
<yaoxp@cn.fujitsu.com> wrote:
> Hi everyone,
>
> I want to know which BB files were compiled when I run ' bitbake <target>'.
> How to achieve it?
>
> e.g.
> # bitbake core-image-minimal
>
> I want to know all the compiled BB files, including native BB file.

please have a look at this thread from last week:

http://www.mail-archive.com/yocto@yoctoproject.org/msg19583.html

bitbake creates the 'cooker.log' file that contains log for all tasks
it has executed during a build. you can get the information you want
from there.

