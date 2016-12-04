Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D92FE00E04; Sun,  4 Dec 2016 15:01:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D511E00E02
	for <yocto@yoctoproject.org>; Sun,  4 Dec 2016 15:01:17 -0800 (PST)
Received: by mail-qk0-f180.google.com with SMTP id n21so330206148qka.3
	for <yocto@yoctoproject.org>; Sun, 04 Dec 2016 15:01:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pFBSfQ5ua+VzHImdo7RrlSBfdJzaOSTbTXQ8akJd7ek=;
	b=fNY2Jg/iGRM22/uz6zZntYP/zMLmgOsfdq/hoLqjtuYdfMSbfBEtCyUGVtucXfVj+m
	6PqvTMfVtuaXWkAVie2WtTfdUh0gEaIACAQXwy0MMLRVOJlEN7Fh0eLuRxzSITDr/wuh
	6DT9dWQjU5M2M35Xip72BSSV4uNWtBXH3+mAiJUy59QbLYU14/lnyFLPUNZRrq6nfYUi
	ScU+mAj3mOnib4cRX9iCAmzqqvV8X8sf2LEJ7B6hr7ZcQ4D0hU0RKcAuSqLIly+sTLlX
	0bhbQRHGcZtDcBZhXY7h6rY2lsLkaUNmDnlTTkS5XQvlL7ghaisjHjHXrHJ8O+G7CL3C
	Gz7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pFBSfQ5ua+VzHImdo7RrlSBfdJzaOSTbTXQ8akJd7ek=;
	b=ciFu9fo0E6nrG3FwnQssjgfaGCTBtfTqU20jnBiSgIJBatOGGueqbB11kt0SllnqAD
	OVQjHKiioJvuxQLplq50c6yGLJZs+pJt6YARManiYYgtZmnbHUMtTB1+AT++AWEDuEP4
	SydIarjur7RnVNGQa05PZ2gaW9T900Ecoj2vmlgBX2HBtfYPK5htZ09S6c/gxhTeNdn5
	Dt+PzqlJecM5kfDGgRSCz3gpRZ4u5cmk8SOMmlAd7+3oFXrkgh2JYHSyRFYluM+E5Rjj
	sx7vdJxtVCcoV2SGhWYKw7PXnAz9zdMc3QuOSfaF+a6MX19NB+sIIZWXTSjOB7MFxxR+
	Q3ew==
X-Gm-Message-State: AKaTC00WuuhAlQDdHOAmzzQyYo8xQCDBENBPrp4nWTLb90SNuE0+imSNn4EnbQgxDyNQ/hZc2IXXwDeFuFjRgg==
X-Received: by 10.55.5.145 with SMTP id 139mr48119718qkf.77.1480892477397;
	Sun, 04 Dec 2016 15:01:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.88.21 with HTTP; Sun, 4 Dec 2016 15:01:16 -0800 (PST)
In-Reply-To: <1899156.Ghe0UD8W3g@peggleto-mobl.ger.corp.intel.com>
References: <CAF3SDA62UsnFYvSNjvO60yukeVuWpqWw+TvOGQfmKGE4kfosEg@mail.gmail.com>
	<CAF3SDA4WnhTY+HXr5+BaCa=tuqAfgKjYuhiOTq1WN6f4pJmwRQ@mail.gmail.com>
	<CAF3SDA6m+dzLnFRxvtqiTHxkrcnDrvEwjWu9hDZWiUVNA8x_rg@mail.gmail.com>
	<1899156.Ghe0UD8W3g@peggleto-mobl.ger.corp.intel.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Sun, 4 Dec 2016 21:01:16 -0200
Message-ID: <CAF3SDA5=GhRGdE-9Q99TK2iZja_inS=CByhfxk_b6ktN6qxzVA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Krogoth rpm-native download gives me 404, can anybody confirm?
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
X-List-Received-Date: Sun, 04 Dec 2016 23:01:21 -0000
Content-Type: text/plain; charset=UTF-8

Hi Paul,

Thanks for your reply. I had another issues with other mirrors. I
guess that the firewall is blocking me. Is still weird, I'll contact
the firewall's support tomorrow. I had never had problems with mirrors
before, and now I have with this and with imx-gpu-viv target. Thanks
again anyway,

Regards,

2016-12-04 17:18 GMT-02:00 Paul Eggleton <paul.eggleton@linux.intel.com>:
> Hi Daniel,
>
> On Fri, 02 Dec 2016 15:28:54 Daniel. wrote:
>> I can't download rpm-5.4.15-0.20140824.src.rpm, I have to download it
>> from another mirror. :/
>>
>> I'm behind a firewall/proxy, so it can be this. Anyway, I download the
>> package from another mirror, put on DL_DIR, clean and then it compiles
>> fine :)
>
> This is odd. The file is available on our source mirror:
>
>   http://downloads.yoctoproject.org/mirror/sources/rpm-5.4.15-0.20140824.src.rpm
>
> It should be downloading from there automatically, unless you're disabling the
> default MIRRORS / PREMIRRORS value, or maybe your firewall/proxy is also
> blocking access to our mirror.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre



-- 
"Do or do not. There is no try"
  Yoda Master

