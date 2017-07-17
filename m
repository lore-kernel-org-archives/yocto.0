Return-Path: <ricardo.ribalda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48403E00C30; Mon, 17 Jul 2017 07:11:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ricardo.ribalda[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.41 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B5D9E00BB6
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:11:54 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id h199so18278851ith.1
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VVuaZ+LS5xmh+DbX8o2tYuYTR7TVHAWIn/NvySy8tpg=;
	b=TKO7+l2FDUVQQPgA98dWsOmo4tPQ2f7uwltnu53zD3N3YyLMHsCxwxhGbga+WKFMaf
	wEjvqcz67Rt4JrJtFrHklEDcTW2Ca/JfN9Ck76rzSlX55pG8AeETxRyWDlA/0nfkLuYh
	1EnYmswq5uMDZH4hAcy4NQ+M0DGwrRHWmokd5HQ00+m2S7IEK+sATkoKshsv9CY16D89
	v2G900Ltw6+9VM7nsV2/7yS+ao6q1wkd/WiWDWpTRLJuL+zFn4CGVnze7hF6+bzp0hqL
	HsVZLG/uZc7hkV+Bc+alTAWCexKGPMpEdVfKfc2H5JCrXlRhcy6PZhgMT+cWwBwkpKmW
	S8pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VVuaZ+LS5xmh+DbX8o2tYuYTR7TVHAWIn/NvySy8tpg=;
	b=tZLDcqIV+hBDbGhm4tV7mReVMflQC2+89+E1dL9MpxHDWk3GI7Lpfcw6Lj5bNPa3b9
	k72yli+YvWObfkH5wCm9XQZTFAd/d7vPVPsyzZnbih4pz5CLnxBYhPAPOjPbHr3yytat
	Blo23mKNywIqVWO+eJkVzrjPEdgTtDwKdwTYi9Fwgk+AxvvHkZ/kRyoUcOcjb/pzmhBx
	pKYVI2LIMSzarzELV9rsPGlseWA6IrvGDN7SclukT3Kpq0vceglcnu6wd/aop9ZgKYoZ
	AWI4Rt6OYCd6OK+Rme5gnAXg1M/tnas/QemDQvldnCjcl+3pIwwLoJO0cK3vLEYnuyn5
	TkxQ==
X-Gm-Message-State: AIVw112MJgjzJFXrfUjL8hxqofcRiDTqe6gyDY3+lBgFkpb20nu2WAyy
	cEmvcGOx/zy3CxmDr85IyOpDXK8E0A==
X-Received: by 10.36.71.79 with SMTP id t76mr5758259itb.118.1500300714431;
	Mon, 17 Jul 2017 07:11:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.180.77 with HTTP; Mon, 17 Jul 2017 07:11:33 -0700 (PDT)
In-Reply-To: <c49169cb-86c2-918d-09aa-e4e8de22a275@linux.intel.com>
References: <20170707103058.976-1-ricardo.ribalda@gmail.com>
	<c49169cb-86c2-918d-09aa-e4e8de22a275@linux.intel.com>
From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Date: Mon, 17 Jul 2017 16:11:33 +0200
Message-ID: <CAPybu_3WQkv9_pJ-td_heuWyp3uF07kLmFGp894DnPCjX5jGPw@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-qt4][PATCH] qt4: Fix build with moc4 and boost
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
X-List-Received-Date: Mon, 17 Jul 2017 14:11:56 -0000
Content-Type: text/plain; charset="UTF-8"

https://codereview.qt-project.org/#/c/40593/3/src/tools/moc/main.cpp

On Mon, Jul 17, 2017 at 4:04 PM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> On 07/07/2017 01:30 PM, Ricardo Ribalda Delgado wrote:
>>
>> +Error described on: https://bugzilla.redhat.com/show_bug.cgi?id=1396755
>> +
>> +Upstream-Status: Backport
>
>
> Backport from where? Please provide a link.
>
>
> Alex



-- 
Ricardo Ribalda

