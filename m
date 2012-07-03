Return-Path: <jim@halfman.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57C6FE0073F
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 05:21:22 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so5207351vbj.35
	for <yocto@yoctoproject.org>; Tue, 03 Jul 2012 05:21:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=LvBX0IMTdR//oPZdgw0vtfRESAiwXyp1j7woZeuJmLU=;
	b=bIATr1cWOMf5J/NEjAis2ylhzY79uzN/XHzfaGH8cFmuGz1BIu5azoqhWWtZJQfxyf
	2k5lbZQLMxMUDy988c0Bdx3sIAM/6XRmmyW1XI12H195rzLyUGreVpYzb52wTmULImyn
	Qqpzg2gwCAzy/1AdkEhd8dMdipTYnJdH8imx9rFuclYU62d9m3dnkozJfz0IKndUWjHM
	EJ+S8Wir5TpZna+O6w3hu3kytzTYILJpcWag1xn0UTTVGDR/BJNvpEpxqUcLroeuI86K
	CJb3dHlvYxtG2uohVsLkh4bMhh11MDkxl6OOAFIHkENTWkAD6uhiJW9frXyIqPXMveUx
	wVdQ==
Received: by 10.220.115.81 with SMTP id h17mr8041947vcq.66.1341318081339; Tue,
	03 Jul 2012 05:21:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.52.114.65 with HTTP; Tue, 3 Jul 2012 05:21:01 -0700 (PDT)
In-Reply-To: <40776A41FC278F40B59438AD47D147A90FDC7F83@SHSMSX102.ccr.corp.intel.com>
References: <40776A41FC278F40B59438AD47D147A90FDC7F83@SHSMSX102.ccr.corp.intel.com>
From: Jim Kosem <jim@halfman.com>
Date: Tue, 3 Jul 2012 13:21:01 +0100
Message-ID: <CAG+EMXj=dt-GDuESeAooTZHr6KmDdAyXBCk+2QKCEmN3vZXd3g@mail.gmail.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
X-Gm-Message-State: ALoCoQl2oTMdPdRE63fieb79BvH/HUAnu2AtAVVnWshXrjZWG7/erDCKcs4meb9q5S6sKZSk3teT
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: Re: Some questions about the webhob design
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 03 Jul 2012 12:21:22 -0000
Content-Type: multipart/alternative; boundary=f46d0438944dc4df8904c3ebf372

--f46d0438944dc4df8904c3ebf372
Content-Type: text/plain; charset=UTF-8

Hi,


   1. Paul and I had talked about the last one doing something wins. So if
   I am selecting Package Groups or Recipes and someone selects another
   recipe, this would be updated in my interface as well with an indication
   that it has been updated. However, the final build would reflect both
   selections.
   2. Again, for now, and this could be changed in the future when we have
   users and real use cases, the last person to change something has their
   change.
   3. User A would have his settings impact User B's build.

Again, our thinking is that this is the first version of WebHob and there
is still work to be done on permissions and groups. However, we need to at
this stage keep things simple and then once in testing, we can see how
people may or may not work over one another.

--
Jim Kosem

Skype: jkosem
Gtalk: jim@halfman.com
Mobile: +44 7757 559081

Note: I read and reply to email only a couple of times a day. If you need
something quicker, please use Skype, GTalk or if its urgent call my mobile.



On 3 July 2012 13:10, Xu, Dongxiao <dongxiao.xu@intel.com> wrote:

> Hi Paul and Jim,
>
> Today Jessica and PRC team had a discussion of the webhob tasks listed in
> the wiki page, and about the "Group" and "Project" concept, we still have
> some questions.
>
> Say user A and user B are privileged users, who have the right to
> customize images, while user C is normal user (Say a TME) and only
> "building image" is allowed.
>
> 1) If user A customized an image with certain configurations, and he told
> user C that the environment is ready, and user C can build his demo image
> there. However, before user C starts to build, user B changed some
> configurations, making the final output not the expected version.
>
> 2) Another issue may be how to avoid global project changes happened
> together? For example user A and user B change the setting in the same time?
>
> 3) If user A changes the global project setting, what's the impact to the
> user B who already kicked off a build based on the original setting?
>
> We are really appreciate if you can help to clarify these questions for us.
>
> Thanks,
> Dongxiao
>

--f46d0438944dc4df8904c3ebf372
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div><ol><li>Paul and I had talked about the last one doi=
ng something wins. So if I am selecting Package Groups or Recipes and someo=
ne selects another recipe, this would be updated in my interface as well wi=
th an indication that it has been updated. However, the final build would r=
eflect both selections.</li>

<li>Again, for now, and this could be changed in the future when we have us=
ers and real use cases, the last person to change something has their chang=
e.</li><li>User A would have his settings impact User B&#39;s build.</li>

</ol><div>Again, our thinking is that this is the first version of WebHob a=
nd there is still work to be done on permissions and groups. However, we ne=
ed to at this stage keep things simple and then once in testing, we can see=
 how people may or may not work over one another.</div>

<div><br></div>--<div>Jim Kosem</div><div><br></div><div>Skype: jkosem</div=
><div>Gtalk: <a href=3D"mailto:jim@halfman.com" target=3D"_blank">jim@halfm=
an.com</a></div><div>Mobile: +44 7757 559081</div><div>







<p>Note: I read and reply to email only a couple of times a day. If you nee=
d something quicker, please use Skype, GTalk or if its urgent call my mobil=
e.</p></div><br>
<br><br><div class=3D"gmail_quote">On 3 July 2012 13:10, Xu, Dongxiao <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:dongxiao.xu@intel.com" target=3D"_blank"=
>dongxiao.xu@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">

Hi Paul and Jim,<br>
<br>
Today Jessica and PRC team had a discussion of the webhob tasks listed in t=
he wiki page, and about the &quot;Group&quot; and &quot;Project&quot; conce=
pt, we still have some questions.<br>
<br>
Say user A and user B are privileged users, who have the right to customize=
 images, while user C is normal user (Say a TME) and only &quot;building im=
age&quot; is allowed.<br>
<br>
1) If user A customized an image with certain configurations, and he told u=
ser C that the environment is ready, and user C can build his demo image th=
ere. However, before user C starts to build, user B changed some configurat=
ions, making the final output not the expected version.<br>


<br>
2) Another issue may be how to avoid global project changes happened togeth=
er? For example user A and user B change the setting in the same time?<br>
<br>
3) If user A changes the global project setting, what&#39;s the impact to t=
he user B who already kicked off a build based on the original setting?<br>
<br>
We are really appreciate if you can help to clarify these questions for us.=
<br>
<br>
Thanks,<br>
Dongxiao<br>
</blockquote></div><br></div>

--f46d0438944dc4df8904c3ebf372--
