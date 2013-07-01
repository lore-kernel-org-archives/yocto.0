Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f51.google.com (mail-vb0-f51.google.com
	[209.85.212.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98FBBE013DE
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2013 07:41:28 -0700 (PDT)
Received: by mail-vb0-f51.google.com with SMTP id x17so3635323vbf.24
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2013 07:41:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=tkqeLxQIrKJFNDgNfXts1Hegumw0FP3v2GYrhJ6N5mc=;
	b=PXZNfqTPOi57NEbM200bV93VkDBumAiC3JliNFzH/iETFtsj/6NkMwivb79pKCDcLI
	w8hcmnqRLWiC5l30PXguTI6Msc5GthcQPSafAgCg08v/JaJrSN1MveyF8tCpBsMd7Mao
	ziBt3JpYtCvsTgqKdVC6Gz6Gl5CCUpN87gwfuTf9eJtEVzwHVZ84OLKKxLKtV5F5pgpf
	TSL5fQsDbyKVmDaltClO8tLuhNx77sczwCL28n+J9/jsVoL3gKttLVPBFmA1q0wc2BEu
	lgQG6S0Gid2xf7NNRKxL5kcNVNxgHRmEg64tB+qFd/9YKhMXvpBIJxpCYGUZhm14S9D7
	0eQA==
X-Received: by 10.52.29.106 with SMTP id j10mr7875646vdh.77.1372689687693;
	Mon, 01 Jul 2013 07:41:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Mon, 1 Jul 2013 07:41:07 -0700 (PDT)
In-Reply-To: <CANwz6nyqof6W3zf+qJ+2enB+zMDC-_ToO_5Q25dZC3ep3UPRBA@mail.gmail.com>
References: <CANwz6nwTb=h0mMevpb07eHGjtaf+fKv3R7-KR=MaAhPNscQOZg@mail.gmail.com>
	<CAJTo0Lbr=eHoKyMVikEM5rkRMwqGVX187d=jU7awZqPfMo5axw@mail.gmail.com>
	<CANwz6nxGkJQkvZv_gbP4sDpsuHOBXRqULS03Vc50a3HQ+1ktbA@mail.gmail.com>
	<CAJTo0LbZGH6KuvHnfA3xD2tj6Y2OL4tHfo6goJqG=4X+quJCCg@mail.gmail.com>
	<CANwz6nzgqMYPcgwrup6KFFmqaKRPP+8eaGyqni9WgKCN4cb2HA@mail.gmail.com>
	<CAJTo0LZNqfbnSu+WunekbS=4AUbPZ2Ts6_8_pUE+WvCC4h=M0Q@mail.gmail.com>
	<CANwz6nyqof6W3zf+qJ+2enB+zMDC-_ToO_5Q25dZC3ep3UPRBA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 1 Jul 2013 15:41:07 +0100
Message-ID: <CAJTo0LZJOGc4KyU8PN1+5gWVDQNQRLNF2ec_GTFs1forvvMcPg@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Gm-Message-State: ALoCoQmDOUue0NRjL9HnrBduYQPezHhf5kihwyURrffOOHI769cWJ2rJ+ozTO3et8ifMoTbFSle+
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fedora 18 CentOS 6.4 yocto difference
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
X-List-Received-Date: Mon, 01 Jul 2013 14:41:31 -0000
Content-Type: text/plain; charset=UTF-8

On 1 July 2013 15:28, Edward Vidal <vidal.develone@gmail.com> wrote:
>
> ---------- Forwarded message ----------
> From: Burton, Ross <ross.burton@intel.com>
> Date: Mon, Jul 1, 2013 at 8:23 AM
> Subject: Re: [yocto] Fedora 18 CentOS 6.4 yocto difference
> To: Edward Vidal <vidal.develone@gmail.com>
>
>
> On 1 July 2013 14:45, Edward Vidal <vidal.develone@gmail.com> wrote:
>> Ross,
>> I am attaching the recent file. I had to re-run the command since I have
>> rm
>> work in my local.conf. do you want this to go to the mailing list?
>
> Yes, the list is the support contact, not me personally.

Your attachment didn't survive the forward.  I've uploaded the log you
sent me directly to http://pastebin.com/uYkyczwb so that everyone else
can see.

Ross

