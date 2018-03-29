Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB424E0090A; Thu, 29 Mar 2018 13:58:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f196.google.com (mail-yw0-f196.google.com
	[209.85.161.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE9DFE00529
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 13:58:55 -0700 (PDT)
Received: by mail-yw0-f196.google.com with SMTP id u15so2384906ywg.8
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 13:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4DSzLHjoUYUrUyt79Pdapjpn5l1KiPaN91X9s68/IhA=;
	b=LHcENgDvI3tCHcm98tItkSbh2v+365RREkR2kRPKZ1kPZs+ZU3XuNEak/g+ef5Q689
	20x4qv1slIOCiz+wzJ4E2kDm2+sN3aMdNFE/eI8U3Jcfct4KV/nMZ644nOj5N4Tjh9sR
	LTKSeOVC6DvkOT5+T5SZVrN1bkUCcKSawvRXiKQ6llfnNOzM/gq8UAURn8cb1YKh09dg
	Jqr9spU7gmUBQdrz5VWYgVNMvTcTYg4cIy5mGM7UPYV2Gsr9RODbdlFX96mYFeWgGhFL
	AUoly8bBtX1bxhKsL6EcStFpSi+EI1iSjsywjynbd00DdOEs1oyuaCdKzii5aAmgOnF5
	6vtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4DSzLHjoUYUrUyt79Pdapjpn5l1KiPaN91X9s68/IhA=;
	b=AieDkrNFyWF+SQ8Q7syT4P2J2Z5CldYKbCggVDlnXllXnsb6n2Z8BuNY2Wc/M4e9cI
	Q8cxNdgYz5HgQzU3wFx04VTKMFeiiudmny4x0+3HD8DJLKlLe/lZYFa0KJgibT/yxnoV
	ZgJCDU53ia6uqn5p1yfQVskj/WlZdEc+t0fkULcUbqQHGqCyyd4BhifbdgH94uBY5/Ci
	N2cXW0TYWsS8WAdWyZxNzic8lWgMa7ZEgf7bqOG8nobR/V+6naWUu1B3XkXbtyp3xnzw
	g87i20j/76SfZbkjXpdfoCO79ZABknAb76wTyDIEM5tWGfAXgb3yl91LLdrImdE0feGX
	SCMw==
X-Gm-Message-State: AElRT7Gfl1I5PnyjUWPk5vmYjdjREZXQW1umYL4RxhWfDctZzv6l27H6
	gH/nmU9AWL07wiX3yEEE9kAAVTC0dk/PNarJkJ0=
X-Google-Smtp-Source: AIpwx49/HcMOgicHgyGKCFvQy4TsCaT3vk0vrc3yUmFBfxbHE7mmmg3vEkLPLX8wnw5wxMz4260aY9w/MzjHi9t4alU=
X-Received: by 10.129.48.3 with SMTP id w3mr461459yww.247.1522357134889; Thu,
	29 Mar 2018 13:58:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:d105:0:0:0:0:0 with HTTP; Thu, 29 Mar 2018 13:58:54
	-0700 (PDT)
In-Reply-To: <CALbNGRTKdu+H4eW8U1D4FxM9+LjfoOeZUC0c=irJyHmK69bdMQ@mail.gmail.com>
References: <CALbNGRRA3Ev3mPT4ZDRO_koC_uwVWy4qXc8onJN5nSeXnE3JRg@mail.gmail.com>
	<CAHUNapQhvr8UWBuF-Z5y0ojhsfF=fUU3nfgmRdxNGi4iKdkbqA@mail.gmail.com>
	<CAMKF1sonaNhe0jznAaVFySa5z-JOBdqxDRjifq-F04kra=_rfg@mail.gmail.com>
	<CALbNGRR0qo=yS2dop-3pfpAZVSC9NekDyg_aFCzURs7NM3UGvg@mail.gmail.com>
	<CALbNGRTKdu+H4eW8U1D4FxM9+LjfoOeZUC0c=irJyHmK69bdMQ@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Thu, 29 Mar 2018 22:58:54 +0200
Message-ID: <CALbNGRS06u3NTU=2XYRiga=B_rPj_rNyLwv2dC8hRUkx=mJt+A@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Has anybody run VC4 + X + recent meta/masters lately
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
X-List-Received-Date: Thu, 29 Mar 2018 20:58:57 -0000
X-Groupsio-MsgNum: 40502
Content-Type: multipart/mixed; boundary="001a114149143f41250568936413"

--001a114149143f41250568936413
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 29, 2018 at 10:37 PM, Andreas M=C3=BCller
<schnitzeltony@gmail.com> wrote:
> On Thu, Mar 29, 2018 at 10:23 PM, Andreas M=C3=BCller
> <schnitzeltony@gmail.com> wrote:
>> On Thu, Mar 29, 2018 at 9:29 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>> 64bit with mesa yes, for 32bit I usually test on wayland+Westeros+WPE
>>>
>>> 2018-03-29 12:26 GMT-07:00 Trevor Woerner <twoerner@gmail.com>:
>>>> 64bit RPi or 32?
>>>>
>>>> --
> Have a bit more information now:
>
> By the update I moved from mesa 17.1.7 -> 17.3.7.
>
> I git diff'ed  around a bit:
>
> * Tiling was introduced (or just reworked?)
> * the error message is created in vc4_resource_from_handle. The handle
> coming in has modifier DRM_FORMAT_MOD_LINEAR (0x) but kernel says 'hey
> I support tiling' DRM_FORMAT_MOD_BROADCOM_VC4_T_TILED
> (0x7000000000000001) [1].
>
> With this I'll try some hacks and then ask at mesa mailing list what
> might be reason for it (a really bad timing for this...)
>
> Cheers
>
> [1] https://cgit.freedesktop.org/mesa/mesa/tree/src/gallium/drivers/vc4/v=
c4_resource.c?h=3D17.3#n745
>
LOL with hack attached I can see horses again:)

Andreas

--001a114149143f41250568936413
Content-Type: text/x-patch; charset="UTF-8"; name="0001-Hack-tiling.patch"
Content-Disposition: attachment; filename="0001-Hack-tiling.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_jfd03tyf0

RnJvbSAyODFlMDkzNGMzOTQwOGM5MTBhMGE2NTU2YWQzNTZkMDk1NWNhNjRkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiA9P1VURi04P3E/QW5kcmVhcz0yME09QzM9QkNsbGVyPz0gPHNj
aG5pdHplbHRvbnlAZ21haWwuY29tPgpEYXRlOiBUaHUsIDI5IE1hciAyMDE4IDIyOjE4OjI1ICsw
MjAwClN1YmplY3Q6IFtQQVRDSF0gSGFjayB0aWxpbmcKTUlNRS1WZXJzaW9uOiAxLjAKQ29udGVu
dC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PVVURi04CkNvbnRlbnQtVHJhbnNmZXItRW5jb2Rp
bmc6IDhiaXQKClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgTcO8bGxlciA8c2Nobml0emVsdG9ueUBn
bWFpbC5jb20+Ci0tLQogc3JjL2dhbGxpdW0vZHJpdmVycy92YzQvdmM0X3Jlc291cmNlLmMgfCAz
ICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NyYy9n
YWxsaXVtL2RyaXZlcnMvdmM0L3ZjNF9yZXNvdXJjZS5jIGIvc3JjL2dhbGxpdW0vZHJpdmVycy92
YzQvdmM0X3Jlc291cmNlLmMKaW5kZXggY2RjYmNjOTE3ZS4uNDcyZTZkZDYxOCAxMDA2NDQKLS0t
IGEvc3JjL2dhbGxpdW0vZHJpdmVycy92YzQvdmM0X3Jlc291cmNlLmMKKysrIGIvc3JjL2dhbGxp
dW0vZHJpdmVycy92YzQvdmM0X3Jlc291cmNlLmMKQEAgLTc0Miw2ICs3NDIsOSBAQCB2YzRfcmVz
b3VyY2VfZnJvbV9oYW5kbGUoc3RydWN0IHBpcGVfc2NyZWVuICpwc2NyZWVuLAogICAgICAgICAg
ICAgICAgIHdoYW5kbGUtPm1vZGlmaWVyID0gRFJNX0ZPUk1BVF9NT0RfTElORUFSOwogICAgICAg
ICB9IGVsc2UgaWYgKHdoYW5kbGUtPm1vZGlmaWVyID09IERSTV9GT1JNQVRfTU9EX0lOVkFMSUQp
IHsKICAgICAgICAgICAgICAgICB3aGFuZGxlLT5tb2RpZmllciA9IGdldF90aWxpbmcubW9kaWZp
ZXI7CisgICAgICAgIH0gZWxzZSBpZiAod2hhbmRsZS0+bW9kaWZpZXIgPT0gRFJNX0ZPUk1BVF9N
T0RfTElORUFSICYmIAorICAgICAgICAgICAgICAgICAgIGdldF90aWxpbmcubW9kaWZpZXIgPT0g
RFJNX0ZPUk1BVF9NT0RfQlJPQURDT01fVkM0X1RfVElMRUQpIHsKKyAgICAgICAgICAgICAgICB3
aGFuZGxlLT5tb2RpZmllciA9IGdldF90aWxpbmcubW9kaWZpZXI7CiAgICAgICAgIH0gZWxzZSBp
ZiAod2hhbmRsZS0+bW9kaWZpZXIgIT0gZ2V0X3RpbGluZy5tb2RpZmllcikgewogICAgICAgICAg
ICAgICAgIGZwcmludGYoc3RkZXJyLAogICAgICAgICAgICAgICAgICAgICAgICAgIk1vZGlmaWVy
IDB4JWxseCB2cy4gdGlsaW5nICgweCVsbHgpIG1pc21hdGNoXG4iLAotLSAKMi4xNC4zCgo=

--001a114149143f41250568936413--
