Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BD8AE00826; Sun, 21 Oct 2018 09:24:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A49FEE003DB
	for <yocto@yoctoproject.org>; Sun, 21 Oct 2018 09:24:48 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id o14so37728294oth.4
	for <yocto@yoctoproject.org>; Sun, 21 Oct 2018 09:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=kNBAPaum9JI8J0XHjZO1ntZv8p698HWh2j+UBmwkDuc=;
	b=Fj/fZ7/SrAm1s0P3TqwfeDh9cBBBFi824njviL/EvGOxBDlDvN5Dgkx5RfLPPi7AoP
	hTvLIfSlA3/6yGbSfW5LZRgCDYWkpD2UZZWTL3ymYEyvjM1YS8SxmqgvsutMFT9rmtJX
	5JfsIyIMW9GuWLe6rYa1sRf6MRaOxEhUl/J1Z02VKA/A/a6I6MfmwPdNlSZWFvSBQ5Gk
	ZnXrXC/7sIZNeSANid0OK70DUs5a2daPdqgX7bDsme5Mwn+L5hBXURW2QujBGiIAkW8c
	7r8InRx5tX+fXEEhui6/6RgP0Q7fvKHihA43pJ6Ik6ylnyoty2hjrww5/Mm/Ew8ycitL
	dnsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=kNBAPaum9JI8J0XHjZO1ntZv8p698HWh2j+UBmwkDuc=;
	b=h7No7+2S9TGCKh3Ek0fi/aqG2Zs0yw5wxBaOx+pdVXo+H/2vwrrKnDWo279tSYuQV0
	GanM1w6TSRcpDPJAOEmFRbw2go9FpLoINr+etZvjfQNS6cqsB+q2r+DA2UECwsE4bPGr
	Xm4IK1Sywt+TyBm4XBjI9QcFHsKyiMsEVS53Owmj3/qT616dAAXMXhi/OyT0Saw/zASQ
	h2Mf4jBpymcgJ1Dav7cb5nrlAWMSJ5RHOGU8GKh5D6aLGqayr3eNeaabvMpe+bKRtpyS
	nKy+BJDa76txKxRGGCXg2JVOG/G7zKhnF4K4w2W/VsEHmTVs4mM+2I7fUA9iWwlBFCfL
	v/9Q==
X-Gm-Message-State: ABuFfojcAutRAxh9SFchYLTpAU2eKVPTtPEGhv1E8HNebswiRPTMY0q5
	ar2bYIk0d67UsVgQRgVesxrMHp43EKNJwTxtiDKw8w==
X-Google-Smtp-Source: ACcGV61k/f61gtBLY5M+ri7DQIF2QBD6sLZh3WXKgOATg53hodOEYHiwUl1jQvFfhd998eRdjHTYPDEeyFDBdTXOEcI=
X-Received: by 2002:a9d:30ae:: with SMTP id s46mr29284693otc.132.1540139088086;
	Sun, 21 Oct 2018 09:24:48 -0700 (PDT)
MIME-Version: 1.0
References: <CA+4=ZEM9oFXNUTU8EKb_e2rCzpqZLw6Yc7dQV4mVMH2TbzRiaw@mail.gmail.com>
	<2DE4399C-7659-49BD-AF9E-259315E5D1DD@gmail.com>
	<CA+4=ZENx5DtdAUMH5Paia2Sv395=yrHH+t+puHeb9jwCi2w+kw@mail.gmail.com>
In-Reply-To: <CA+4=ZENx5DtdAUMH5Paia2Sv395=yrHH+t+puHeb9jwCi2w+kw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sun, 21 Oct 2018 17:24:35 +0100
Message-ID: <CAJTo0LaQJL_b-m8BLun+5HLnb_6vMe+XFySjLswOQ+UxGtK9=w@mail.gmail.com>
To: joe.flowers@nofreewill.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: SUSE SLES target OS
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
X-List-Received-Date: Sun, 21 Oct 2018 16:24:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you want to rebuild Suse then the recommended tool is OBS, as
that's what is used to build Suse.

Obviously, building your own SLES isn't SLES, just something that
looks like SLES (says a Centos just looks like, but isn't, RHEL).

Ross
On Fri, 19 Oct 2018 at 22:43, Joe Flowers <joe.flowers@nofreewill.com> wrot=
e:
>
> Yes, unfortunately, I mean SLES.
>
> Your answer implies that to create a minimal SLES build I will have to ab=
andon Yocto and look for another build (or reduction) solution as I know th=
is has been done by non-SUSE entities.
>
>
> On Fri, Oct 19, 2018 at 5:33 PM Ismael Mart=C3=ADnez Dibene <imdibene@gma=
il.com> wrote:
>>
>> Do you mean OpenSuse? Since SLES is only build/provide to you by SUSE di=
rectly, it would be the same as trying to build your own RHEL instead of fe=
dora. That would be difficult without theirs repositories ;-)
>>
>> Saludos / Regards / Mit Freundlichen gr=C3=BC=C3=9Fen / Atenciosamente
>> Ismael Mart=C3=ADnez Dibene
>>
>> > Am 19.10.2018 um 16:17 schrieb Joe Flowers <joe.flowers@nofreewill.com=
>:
>> >
>> > Hello everyone,
>> >
>> > I need to get started on a Yocto set that will build a minimal core fo=
r a target OS of SUSE Linux Enterprise Server on x64 target hardware like a=
 MinnowBoard.
>> >
>> > I have scoured the web, SUSE, and this list's (Yocto Project) archives=
, but have run into no pointers.  My guess is that it is right under my nos=
e that can be seen with more experience rather than being hidden behind pri=
vate walls.
>> >
>> > Will someone please get me started on the pointers and downloads I nee=
d to get started?
>> >
>> > I have already run through a tutorial on creating a core OS using Yoct=
o for a WandBoard target hardware.
>> >
>> >
>> > Thank you !
>> >
>> > Joe
>> > --------------
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

