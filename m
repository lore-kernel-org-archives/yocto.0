Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F399E009AC; Fri, 31 Aug 2018 04:30:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25A8CE007AD
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 04:30:50 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id c190-v6so21062163oig.6
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 04:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ulNFAyjc1sy5LeeYXGfkrxVKa5jvbtUQfPF4Lc3hqQY=;
	b=IvCP9J7C2eGTI0fyc3M/cPXVb87faLjIWfQWl++h1OXV2qM3Wd7tVTcRYKSamEGMLe
	4hZ1mean82DWR3KFEasgl/ZYS4X4XtonNheMtRL6VV+gthVK0AUj9qpvMwxdL2K7asZQ
	xlf2rlWZ6+/vpYNZYJrPKzYlyRWKbtfTxBZfUl3wS8xQxYQLupCUPytTz4/9ZFaB8bDV
	ZNQDd8S0Yub2q0POjSoOJ1Z8zRYnA/yXhHzdBAAunPAwyesx4QKC9pjV+gDx5NBXCaYE
	cOy32EATYGPXd4a4ZWXE5QYvuLf8r6/rhPXutymKZqd8r6CFezLdJq3hFR2YxNA9Z4iJ
	Iu1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ulNFAyjc1sy5LeeYXGfkrxVKa5jvbtUQfPF4Lc3hqQY=;
	b=Eg6ffgNWuSmSvKCMwl7YFjqKRFnGU5N+/kMYCBIpWxVcfD51DYmbGU57ykCKyu/B8I
	GXKEAwvUpFTX8c1lBDqDfFw03xGDoIdLRX1kkbk9PnAPy9RwVttvnwtsS/ZXtB4y2IQA
	UPxNF9SWBdIzM4RxMR0HQWcFDwuoOFq5sg2Wzwi4ueXbGPIUSDt+xJRhgirtpCy1BDSy
	vfvZmXKkKG6GOaC7anqY3zGJ73Vz3z61Tkc8tkTWV8v4zn+q23YwwtMuhjz3ONX6fMvh
	uibpTXEXs7zPAAlK73aMFxpTd4J51Thd8O+TquLA8LuSjszR2XK+t3qhCKPQcvmEYact
	s0Kw==
X-Gm-Message-State: APzg51Ab1hxp285AOr5T9Zo99MMZtC3YRTqtsqyvmvWPgBylG0xwc+JS
	TMYY9OorxPGTUSZOGXe2wr+lZTjk8FnQpZSrIKcP+Q==
X-Google-Smtp-Source: ANB0VdZwYVBFXV8h0ItcqttjP8DlFm36TvQebEy7htau/KRAPA4bOmsmKnZYR2o2NjgFHuOk/aJ4fwK5ZtvC+irgPMs=
X-Received: by 2002:aca:a04:: with SMTP id 4-v6mr7097827oik.203.1535715050469; 
	Fri, 31 Aug 2018 04:30:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:7c0c:0:0:0:0:0 with HTTP; Fri, 31 Aug 2018 04:30:29
	-0700 (PDT)
In-Reply-To: <CAOT_U5bX8HE_8tEtqSLhxdGrqkz2oW7icNuc20r7yf9NxRJCrg@mail.gmail.com>
References: <CAOT_U5ZjnsD9O1qrewUAtqBp+0_306Gx1s1nS8MP3upJpuDiLA@mail.gmail.com>
	<CANNYZj_HLD3qC30b32W-hH2n4QaGYsNQ=XP2Xa1EHcMJny1Syw@mail.gmail.com>
	<CAJTo0LafDpq-n3j8zjkk0jKBy-gtp5pd5Xr94D8k8he1mCmSmA@mail.gmail.com>
	<CAOT_U5bX8HE_8tEtqSLhxdGrqkz2oW7icNuc20r7yf9NxRJCrg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 31 Aug 2018 12:30:29 +0100
Message-ID: <CAJTo0LbZErNQz=cmq4ZrKRt3wYcN5cR-+1BTnqDU+kireAoT=w@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: (How) did you script bitbake/set up nightly builds?
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
X-List-Received-Date: Fri, 31 Aug 2018 11:30:51 -0000
Content-Type: text/plain; charset="UTF-8"

On 31 August 2018 at 12:24, Alan Martinovic <alan.martinovic@senic.com> wrote:
> Thanks Ross
> this is what more or less what I'm doing.
> What I haven't found a way to do from python is making modifications from
> the initialized build directory.
>
> I'd like to do that to change things in conf/local.conf.
> For example generate DISTRO_VERSION from git describe --tags
>
> That is something that needs to happen in between
> . oe-init-build-env  and bitbake foo

subprocess.call(". oe-init-build-env mybuild", shell=True)
# call git-desribe, write to mybuild/conf/auto.conf
subprocess.call(". oe-init-build-env mybuild ; bitbake foo", shell=True)

Ross

