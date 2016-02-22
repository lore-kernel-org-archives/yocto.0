Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20DBEE00BAA; Mon, 22 Feb 2016 10:37:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.44 listed in list.dnswl.org]
Received: from mail-qg0-f44.google.com (mail-qg0-f44.google.com
	[209.85.192.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E83A5E00AAB
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 10:37:13 -0800 (PST)
Received: by mail-qg0-f44.google.com with SMTP id b67so118181884qgb.1
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 10:37:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Q65rTEt/+pL6UY/ndFir0dXSKmipHvk8LlH/R64jbUg=;
	b=UTsrkAwvx/ZK/kQAE3noYbiX/PU+SvL7U37aDXEe9r5GUDaOBaJum5CSev6ghQhJ3o
	PMelNI/Yhe2JF0Z1OYuuMYALj/Ec0Wegah8xMTJ0daqRYCVndovDITUJdNm2/PcRwdvv
	s2OaDzuGCFv3fPjsFNsFdC3b3Kp4+qEA1PdIK4L6fqe4+yw0fek++t3rwMv8T8jOLd6N
	pl4qWyYaJGzAm5r64ZzcGU+Bk1rPhKpNo71ukCMbKaCJCLPzlcQkNW1ehovdDMeMclNq
	zxhT5x5bvA6AEs4+Nb6DqhNhP0dhAZFVwJHqOv6jvqC6pDPimSSEbzfqFAJJee0cE9xw
	C/Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Q65rTEt/+pL6UY/ndFir0dXSKmipHvk8LlH/R64jbUg=;
	b=D/JPE8m6zWH5TbDuJnFvzFTA4+fZM35aMb77mbBNwZgm5vjPH/LEBYBsNgOTcbfFBd
	s+HOFU0xub2eKErMUplCIOMWujTccUi08DvgkiuIJdkDh72dJmSojXkm5gupBMqWHHe5
	bqRNZlqfEImimGo5lxAk7of9XC3mZsDsVVDGIQfIOEIQcN0ZnigMHsw4sJKIUIfBvh6l
	mVCfiWTi2HDdooRUJyos445aPpS+/Hil+L7alb5E7MMaXx+HPRbEFK+HX54gHDAarF9G
	b+8Yt+pbeH3/6CFrPmBY/RIHas1iy/M1rnRWUJSPYPz0GpEpM/ipAfsR4uz2k16SCwmh
	LJtA==
X-Gm-Message-State: AG10YOR4ynyWGxbSQrGBzUeryvvrMROFD2LKcLlByMneaGV8YijjzKFvHW1x+5uIYEIpnNZCeDvCjo0IGeBDAA==
X-Received: by 10.140.238.8 with SMTP id j8mr38576592qhc.76.1456166233040;
	Mon, 22 Feb 2016 10:37:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Mon, 22 Feb 2016 10:36:43 -0800 (PST)
In-Reply-To: <56CAB4ED.1010208@easyarm.com>
References: <56CAB4ED.1010208@easyarm.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 22 Feb 2016 10:36:43 -0800
Message-ID: <CAMKF1spf8FT_UvoVkrpipJxsDi8CQwJyuWtEjmiq0MOuju0d=w@mail.gmail.com>
To: Surya <surya.n@easyarm.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Qt5browser-problem
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
X-List-Received-Date: Mon, 22 Feb 2016 18:37:17 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 21, 2016 at 11:12 PM, Surya <surya.n@easyarm.com> wrote:
> Hello,
>
> Is there any qt5 webbrowser based on qtwebkit or webengine ,which works with
> audio video application? I have worked on otter-browser,snowshoe ,but in all
> cases i can only access normal pages like google.com etc.,,but streaming is
> not possible.I cant see youtube videos or any video application. Any
> suggestion on this ..

IIRC there is a sample browser called fancybrowser that can be
installed allong with qtwebkit


>
>
>
> Thanks
> Surya
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

