Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64291E0077F; Mon, 24 Apr 2017 05:26:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.170 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29439E00349
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 05:26:41 -0700 (PDT)
Received: by mail-qt0-f170.google.com with SMTP id y33so111559588qta.2
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 05:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+Tqx8r17HzutWFonJ5rY1yVUAJOhQbSpRKn8t5nX+dc=;
	b=S+51i03POUcP/N7snT1Tv91Y28Dp8n+Vy6aYo2E1jg8i78UE1l6oPDtO7PVPFhSxw8
	60XNP05JWhbI0SzIB/9GQ6qUKalrlnGztI6HJpqaDp7Jv7GeicRFjOpF8MHxPzQ6eAHt
	QKxhc3kia3CUL2L8WY4jWeVEln7Op6LGv38XLcib091jEDUwqAOPgIN/xdL683LUH2/C
	3E/T+F2pB43/y5ThyYD1yVdR6nCfBKMA5DBeKhUiY1k2Rai/iyexVc+WmTWKEPuNCXij
	GU+HQ/xKy4IJhGhFX62y+fES5O+oNLBM4+BRUUchwmQFydqzQPbNOagp5KLtfZaJziuA
	RDMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+Tqx8r17HzutWFonJ5rY1yVUAJOhQbSpRKn8t5nX+dc=;
	b=a6xpKviMCkdDYmS9TKxucq5aS8QF3MQHKcFDLg/akruuk+fCcDPIpBTlYvzF+U0uQS
	X3ORdWnOop+PlvautDEhhqDfyq06nPHE77B+ZaWQE5OUo8Tjs+TuplI+f8qVwaD6NcxA
	naY2y6Vk/0KzL4gd2I5v6O7umkLm6W3YormBrcWUqNYDsvn7HVHcKhtC1uHTGc+haK74
	N5D8lRz4X1RORkkBUYigU54Nuc8YYuf4Pl79ah2d4uCWEWMZgCU+50OQKpuqh1842186
	dVCmb8gdiwBJN7csOnnngh2ALwFY88yORiI6VvXJxEKXgv9pPm/4nbVLg6ASvDNi62EP
	Ld+w==
X-Gm-Message-State: AN3rC/55wby1ykLmduYX0uR5UHuBWHMkuokQ0MvI+FBGwAWpk93W9al2
	GYdNxFVHljBlwzYanxi1gJRIoFlBAA==
X-Received: by 10.237.34.136 with SMTP id p8mr26824535qtc.282.1493036801225;
	Mon, 24 Apr 2017 05:26:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.145.143 with HTTP; Mon, 24 Apr 2017 05:26:40 -0700 (PDT)
In-Reply-To: <CAJTo0LYc7nRX2zsPJkP3ZdmnenBxP=fCNUbc_H6L1vePDHjn_g@mail.gmail.com>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
	<CADkTA4MjffrJ13GxaEAQusEU10jj0dUcUsyea36Y2gCy7HCVmA@mail.gmail.com>
	<CADkTA4OgpwhRtmR4+4kurnhBUQoap3E3kKoRTe4fNMBFOEp8hw@mail.gmail.com>
	<CAJTo0LYc7nRX2zsPJkP3ZdmnenBxP=fCNUbc_H6L1vePDHjn_g@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 24 Apr 2017 08:26:40 -0400
Message-ID: <CADkTA4No0hpHXr2BtC9BCXQaUU_HPHAtCWKUUUVD7pE-enjgAg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Re: [oe] [OE-core] [RFT] gcc7 and glibc-2.26 recipes
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
X-List-Received-Date: Mon, 24 Apr 2017 12:26:45 -0000
Content-Type: multipart/alternative; boundary=001a1139e42e2c7be5054de8b8d9

--001a1139e42e2c7be5054de8b8d9
Content-Type: text/plain; charset=UTF-8

On Mon, Apr 24, 2017 at 6:29 AM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 24 April 2017 at 01:31, Bruce Ashfield <bruce.ashfield@gmail.com>
> wrote:
>
>> I wasn't able to bring up the linux-yocto one .. but the 4.10 linux Yocto
>>> should be at a high enough stable
>>> release to build with gcc7. So if there's a direct link to that error,
>>> I can take a closer look.
>>>
>>
>> And sure enough, after I sent that the error page with linux-yocto
>> finally wheezed in.
>>
>> I see that it was the 4.1 kernel, which is expected to fail. I haven't
>> looked into backporting gcc7 fixes
>> that far, but if there's demand, it is something we can consider/look
>> into.
>>
>
> | kernel/built-in.o: In function `update_wall_time':
> | (.text+0x65ecc): undefined reference to `____ilog2_NaN'
>
> I'm getting that with 4.9.15 from meta-intel, should I be telling Saul to
> update the BSP with some fixes you've made?
>


4.9 would need fixes as well, or be on a -stable that contains the fix:

% git tag --contains 85f687708c811563df33c70c9cec9b5c2733acf8
v4.9.18
v4.9.19
v4.9.20
v4.9.21

Cheers,

Bruce


>
> Ross
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a1139e42e2c7be5054de8b8d9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Apr 24, 2017 at 6:29 AM, Burton, Ross <span dir=3D"ltr">&lt;<a =
href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div class=3D"gmail_extra"><span class=3D"gmail-"><br><=
div class=3D"gmail_quote">On 24 April 2017 at 01:31, Bruce Ashfield <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank=
">bruce.ashfield@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><span class=3D"gmail-m_1233982322382417582gmail-=
"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div c=
lass=3D"gmail_extra"><div class=3D"gmail_quote"><div>I wasn&#39;t able to b=
ring up the linux-yocto one .. but the 4.10 linux Yocto should be at a high=
 enough stable</div><div>release to build with <span class=3D"gmail-m_12339=
82322382417582gmail-il">gcc7</span>. So if there&#39;s a direct link to tha=
t error, I can take a closer look.</div></div></div></div></blockquote><div=
><br></div></span><div>And sure enough, after I sent that the error page wi=
th linux-yocto finally wheezed in.</div><div><br></div><div>I see that it w=
as the 4.1 kernel, which is expected to fail. I haven&#39;t looked into bac=
kporting <span class=3D"gmail-m_1233982322382417582gmail-il">gcc7</span> fi=
xes</div><div>that far, but if there&#39;s demand, it is something we can c=
onsider/look into.</div></blockquote></div><br></span><div class=3D"gmail_e=
xtra">| kernel/built-in.o: In function `update_wall_time&#39;:</div><div cl=
ass=3D"gmail_extra">| (.text+0x65ecc): undefined reference to `____ilog2_Na=
N&#39;</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"=
>I&#39;m getting that with 4.9.15 from meta-intel, should I be telling Saul=
 to update the BSP with some fixes you&#39;ve made?</div></div></div></bloc=
kquote><div><br></div><div><br></div><div>4.9 would need fixes as well, or =
be on a -stable that contains the fix:</div><div><br></div><div>% git tag -=
-contains 85f687708c811563df33c70c9cec9b5c2733acf8</div><div>v4.9.18</div><=
div>v4.9.19</div><div>v4.9.20</div><div>v4.9.21</div><div><br></div><div>Ch=
eers,</div><div><br></div><div>Bruce</div><div>=C2=A0</div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extr=
a"><span class=3D"gmail-HOEnZb"><font color=3D"#888888"><div class=3D"gmail=
_extra"><br></div><div class=3D"gmail_extra">Ross</div></font></span></div>=
</div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature">&quot;Thou shalt not follow the NULL pointer, for chao=
s and madness await thee at its end&quot;</div>
</div></div>

--001a1139e42e2c7be5054de8b8d9--
