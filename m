Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75444E00D0D; Sun, 23 Apr 2017 17:32:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f179.google.com (mail-qt0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61906E00CF2
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 17:31:53 -0700 (PDT)
Received: by mail-qt0-f179.google.com with SMTP id g60so102464692qtd.3
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 17:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GR8Ik0+c8NDSndl1zEP6ULDuWt2YOlgH+CJl3LQBJjw=;
	b=R7gMWskJ0eqQpDOh4z3qhFbf4ziRr9SPIXwRXMVSWiVQFGqdJnC/iLihcLfZKRi+3N
	6kzIBS6FOihwgGcTK9pzHTeGvUNXfA/4NqmKOJ/Yr+krPwbbT4NxY/QhH3bgzrpeVCtB
	56EyjacxQYquygBbJdMya3d0u/PpxbVSoOKrd23UbFgG5wWJaam38MkW+q6Dzw9QdKgf
	tlrGt6xHbYUPD4nnT3ptwXM8FPVYfbZWg7y/Ky5B+rZ9D3eqSkid5MiQu35WmqK7HXBB
	uLCKybaZCbSEmnqt/r+dAVuGKH2so739WD0I1tnOE+TGPt8er/7jzr944N0ytt9JmrL4
	W6iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GR8Ik0+c8NDSndl1zEP6ULDuWt2YOlgH+CJl3LQBJjw=;
	b=Z4RWr/agSXxzslH1hjTCMF0dhFAibjLHU5okhyiXqQUCd1H5EdUhAuRw99eCRdAsB7
	OQyX1JEt8HSl3XADVU1/cZAcTMaMsMs3f8sPJsjXwAPdVEb4xwpZHZwfno1XlDQ5EnUE
	4q3IjjnJoxZNWMDWFtp4f8NN6EOaqYnZjSqqCnSA5yKo3sa6r4oJlM/8iVxykWNQG4Pf
	G+Kc86trx820bpPzWMntzyajmeZ4t6FPdBiaIxItCp/iQsGKApBf14p3xPeJ/u+b00oA
	Bqig12+eir0Gntvw0rvMgy0U/ZKg1iswMPs+2vZobQN5hzjCPLcBJ+URtnVzeIFR9Ah5
	RKaw==
X-Gm-Message-State: AN3rC/5GUWiCeo7Oy0Z1wZki3RfEVmcxoGgJIWP75LheNNOryOtaxu5a
	3HepcpkP1ooEGD5jecciPdMHLNwl5Q==
X-Received: by 10.200.54.136 with SMTP id a8mr26223339qtc.87.1492993912487;
	Sun, 23 Apr 2017 17:31:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.145.143 with HTTP; Sun, 23 Apr 2017 17:31:52 -0700 (PDT)
In-Reply-To: <CADkTA4MjffrJ13GxaEAQusEU10jj0dUcUsyea36Y2gCy7HCVmA@mail.gmail.com>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
	<CADkTA4MjffrJ13GxaEAQusEU10jj0dUcUsyea36Y2gCy7HCVmA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Sun, 23 Apr 2017 20:31:52 -0400
Message-ID: <CADkTA4OgpwhRtmR4+4kurnhBUQoap3E3kKoRTe4fNMBFOEp8hw@mail.gmail.com>
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
X-List-Received-Date: Mon, 24 Apr 2017 00:32:06 -0000
Content-Type: multipart/alternative; boundary=001a1142833cce43ea054ddebb76

--001a1142833cce43ea054ddebb76
Content-Type: text/plain; charset=UTF-8

On Sun, Apr 23, 2017 at 8:30 PM, Bruce Ashfield <bruce.ashfield@gmail.com>
wrote:

>
>
> On Sun, Apr 23, 2017 at 6:04 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> On 16 April 2017 at 16:50, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> > I have put together recipes for upcoming gcc-7 major release as well
>> > as glibc 2.26 release, which we would target for next release ( 2.4 )
>> >
>>
>> I threw these at the autobuilder and the errors are starting to appear:
>>
>> http://errors.yoctoproject.org/Errors/Latest/?filter=
>> eddf6362e17899113f10cf53ed0db8a4b13ff3fc&type=commit
>>
>> Repeated diffutils and rpcbind failures, but linux-yocto and grub too (I
>> have your grub fix already).
>>
>
> I wasn't able to bring up the linux-yocto one .. but the 4.10 linux Yocto
> should be at a high enough stable
> release to build with gcc7. So if there's a direct link to that error, I
> can take a closer look.
>

And sure enough, after I sent that the error page with linux-yocto finally
wheezed in.

I see that it was the 4.1 kernel, which is expected to fail. I haven't
looked into backporting gcc7 fixes
that far, but if there's demand, it is something we can consider/look into.

Bruce


>
> Bruce
>
>
>>
>> Ross
>> --
>> _______________________________________________
>> Openembedded-devel mailing list
>> Openembedded-devel@lists.openembedded.org
>> http://lists.openembedded.org/mailman/listinfo/openembedded-devel
>>
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await thee
> at its end"
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a1142833cce43ea054ddebb76
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Apr 23, 2017 at 8:30 PM, Bruce Ashfield <span dir=3D"ltr">&lt;<=
a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ashfield=
@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><spa=
n class=3D"">On Sun, Apr 23, 2017 at 6:04 PM, Burton, Ross <span dir=3D"ltr=
">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burto=
n@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span>O=
n 16 April 2017 at 16:50, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com=
" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
<br>
&gt; I have put together recipes for upcoming gcc-7 major release as well<b=
r>
&gt; as glibc 2.26 release, which we would target for next release ( 2.4 )<=
br>
&gt;<br>
<br>
</span>I threw these at the autobuilder and the errors are starting to appe=
ar:<br>
<br>
<a href=3D"http://errors.yoctoproject.org/Errors/Latest/?filter=3D" rel=3D"=
noreferrer" target=3D"_blank">http://errors.yoctoproject.org<wbr>/Errors/La=
test/?filter=3D</a><br>
eddf6362e17899113f10cf53ed0db8<wbr>a4b13ff3fc&amp;type=3Dcommit<br>
<br>
Repeated diffutils and rpcbind failures, but linux-yocto and grub too (I<br=
>
have your grub fix already).<br></blockquote><div><br></div></span><div>I w=
asn&#39;t able to bring up the linux-yocto one .. but the 4.10 linux Yocto =
should be at a high enough stable</div><div>release to build with gcc7. So =
if there&#39;s a direct link to that error, I can take a closer look.</div>=
</div></div></div></blockquote><div><br></div><div>And sure enough, after I=
 sent that the error page with linux-yocto finally wheezed in.</div><div><b=
r></div><div>I see that it was the 4.1 kernel, which is expected to fail. I=
 haven&#39;t looked into backporting gcc7 fixes</div><div>that far, but if =
there&#39;s demand, it is something we can consider/look into.</div><div><b=
r></div><div>Bruce</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><di=
v dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div><b=
r></div><div>Bruce</div><span class=3D""><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
<span class=3D"m_-7050518764671794169HOEnZb"><font color=3D"#888888"><br>
Ross<br>
--<br>
______________________________<wbr>_________________<br>
Openembedded-devel mailing list<br>
<a href=3D"mailto:Openembedded-devel@lists.openembedded.org" target=3D"_bla=
nk">Openembedded-devel@lists.opene<wbr>mbedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-deve=
l" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.org/<wbr>=
mailman/listinfo/openembedded-<wbr>devel</a><br>
</font></span></blockquote></span></div><span class=3D"HOEnZb"><font color=
=3D"#888888"><br><br clear=3D"all"><div><br></div>-- <br><div class=3D"m_-7=
050518764671794169gmail_signature" data-smartmail=3D"gmail_signature">&quot=
;Thou shalt not follow the NULL pointer, for chaos and madness await thee a=
t its end&quot;</div>
</font></span></div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;Thou shalt no=
t follow the NULL pointer, for chaos and madness await thee at its end&quot=
;</div>
</div></div>

--001a1142833cce43ea054ddebb76--
