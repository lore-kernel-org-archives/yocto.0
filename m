Return-Path: <aaron@assonance.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EAB6E00A1A; Mon, 26 Nov 2018 12:42:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f181.google.com (mail-it1-f181.google.com
	[209.85.166.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F408E009AA
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 12:42:42 -0800 (PST)
Received: by mail-it1-f181.google.com with SMTP id o19so30531651itg.5
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 12:42:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=assonance-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=TttxafgW+KPApPjBhe+zcIf3Gw3hrsTf+6LizR8upsQ=;
	b=h1NMllL+p55/dkr7n61gkJjrsteeD+XoTwP9gs9+lI8nPIazc2P7T3GvzKy9Ezzia4
	OFRQQfz+BmwJuJoUImwkxgNlcKu2Brw84cxioYhcTuWQH8UtFHU7G/XE8lTP7tDJdUfC
	uX9WOtwAd/5EjPGItufSe0Iowhmxkt29+M1tFnRz2Izkc2btmBbA59f1/6tz5/zQQeMd
	hwoa0oW9aQEe7F7tDAH+ce+QpKgQQptjWB6spz+/2d2P8McElpbbC5NMD3t8I0tTg8QG
	kfFEyo4azTtNCFMDwe0zVTtxQm13FPPVE3lqamox/1FbXashUxAwIQMPEQz5zy4Q0tow
	p5bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=TttxafgW+KPApPjBhe+zcIf3Gw3hrsTf+6LizR8upsQ=;
	b=XEk4qx//GaNueOgEO345AwSEEVciG2X9RAP/0clfOPfy/ZTyBAIBThCy38Unkpv2uc
	uHaJL31qDNcQiNQ0Q2/jajk3rAoPuK/TkVxDSFHyv4uTAg21JPlArtiqmvcMl2234kZI
	WfW7xm9hdFGruXv08IfkJvmiTTkv68Tq6Juk3e9uFMEY7JauZ83X3hQghD3+aoQIu1iS
	YBQwYtWES5WxSZ6kdALgrTbju85ffXKDRVPRqfTUci3bJHZjoJrDMk8RBFVbvBtyBpMo
	dibAGUuV6C0Wr2wNBva1L9TlObeUGMjlSpU6gvMLd7RMlyhJ4iVxrPxloWO7v/MK0sC3
	E/LA==
X-Gm-Message-State: AA+aEWY1rkUtR/iP6Kixs/5/sZUmmuQzv3wuTNVCQrU81ZcBdRGD+HuP
	MdO8IhY1GqXJjhjNRx3FWm/YWYA3EONojtkUqL8Lq8/b
X-Google-Smtp-Source: AFSGD/WWv2/J+AccHI5gE5FiQFeDRhTgITyiB5wEsdfZ9Hk+F50Ei80izltef5KcNeoFPr9dgtIp7jCqZ0JlzQ9PvoE=
X-Received: by 2002:a24:7d93:: with SMTP id b141mr23452569itc.91.1543264962095;
	Mon, 26 Nov 2018 12:42:42 -0800 (PST)
MIME-Version: 1.0
References: <CAFSZm+ioLuVFJi-+zF9Rx4Nk7q1+i6Ehw6puQX0Vd+f_Xkc5Ww@mail.gmail.com>
In-Reply-To: <CAFSZm+ioLuVFJi-+zF9Rx4Nk7q1+i6Ehw6puQX0Vd+f_Xkc5Ww@mail.gmail.com>
From: Aaron Cohen <aaron@assonance.org>
Date: Mon, 26 Nov 2018 15:42:21 -0500
Message-ID: <CAFSZm+gFHhY7me4vawo948GUgix4m15_jfamjxZ-Ng_VEvqUHw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Mercurial fetcher doesn't work for me (patch included)
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
X-List-Received-Date: Mon, 26 Nov 2018 20:42:44 -0000
Content-Type: multipart/alternative; boundary="000000000000dc439f057b975fe5"

--000000000000dc439f057b975fe5
Content-Type: text/plain; charset="UTF-8"

Also, what is it that is supposed to create the
$(BUILDDIR)/tmp/hosttools/hg symlink?

For some reason, this link is not created for me automatically. It works
fine if I create it manually.

--Aaron


On Mon, Nov 26, 2018 at 3:34 PM Aaron Cohen <aaron@assonance.org> wrote:

> I'm trying to write a recipe for a local repo that is kept in mercurial,
> and encountering the following problem:
>
>
>> Traceback (most recent call last):
>>   File "/home/joel-cohen/code/waveos2/poky/bitbake/lib/bb/data_smart.py",
>> line 808, in DataSmart.getVarFlag(var='PV', flag='_content', expand=True,
>> noweakdefault=False, parsing=False, retparser=False):
>>              if expand or retparser:
>>     >            parser = self.expandWithRefs(value, cachename)
>>              if expand:
>>   File "/home/joel-cohen/code/waveos2/poky/bitbake/lib/bb/data_smart.py",
>> line 416, in DataSmart.expandWithRefs(s='0.0.4+git${SRCPV}', varname='PV'):
>>                  try:
>>     >                s = __expand_var_regexp__.sub(varparse.var_sub, s)
>>                      try:
>>   File "/home/joel-cohen/code/waveos2/poky/bitbake/lib/bb/data_smart.py",
>> line 108, in VariableParse.var_sub(match=<_sre.SRE_Match object; span=(9,
>> 17), match='${SRCPV}'>):
>>                          raise Exception("variable %s references itself!"
>> % self.varname)
>>     >            var = self.d.getVarFlag(key, "_content")
>>                  self.references.add(key)
>>   File "/home/joel-cohen/code/waveos2/poky/bitbake/lib/bb/data_smart.py",
>> line 808, in DataSmart.getVarFlag(var='SRCPV', flag='_content',
>> expand=True, noweakdefault=False, parsing=False, retparser=False):
>>              if expand or retparser:
>>     >            parser = self.expandWithRefs(value, cachename)
>>              if expand:
>>   File "/home/joel-cohen/code/waveos2/poky/bitbake/lib/bb/data_smart.py",
>> line 430, in DataSmart.expandWithRefs(s='${@bb.fetch2.get_srcrev(d)}',
>> varname='SRCPV'):
>>                  except Exception as exc:
>>     >                raise ExpansionError(varname, s, exc) from exc
>>
>> bb.data_smart.ExpansionError: Failure expanding variable SRCPV,
>> expression was ${@bb.fetch2.get_srcrev(d)} which triggered exception
>> AttributeError: 'FetchData' object has no attribute 'moddir'
>
>
> I've fixed this with the following patch, which moves some code in the Hg
> fetcher to later in the urldata_init method, after some necessary variables
> have been initialized. I'm not sure if I'm alone in seeing this problem or
> not?
>
> Thanks for any help,
> Aaron
>
>
>

--000000000000dc439f057b975fe5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Also, what is it that is supposed to create the $(BUILDDIR=
)/tmp/hosttools/hg symlink?<div><br></div><div>For some reason, this link i=
s not created for me automatically. It works fine if I create it manually.<=
/div><div><br></div><div>--Aaron</div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">On Mon, Nov 26, 2018 at 3:34 PM Aaron Coh=
en &lt;<a href=3D"mailto:aaron@assonance.org">aaron@assonance.org</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"=
ltr"><div>I&#39;m trying to write a recipe for a local repo that is kept in=
 mercurial, and encountering the following problem:</div><div>=C2=A0</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">Traceback (most recent cal=
l last):<br>=C2=A0 File &quot;/home/joel-cohen/code/waveos2/poky/bitbake/li=
b/bb/data_smart.py&quot;, line 808, in DataSmart.getVarFlag(var=3D&#39;PV&#=
39;, flag=3D&#39;_content&#39;, expand=3DTrue, noweakdefault=3DFalse, parsi=
ng=3DFalse, retparser=3DFalse):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if expand or retparser:<br>=C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 parser =3D self.expandWithRefs(value, cachename)<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if expand:<br>=C2=A0 File &=
quot;/home/joel-cohen/code/waveos2/poky/bitbake/lib/bb/data_smart.py&quot;,=
 line 416, in DataSmart.expandWithRefs(s=3D&#39;0.0.4+git${SRCPV}&#39;, var=
name=3D&#39;PV&#39;):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0try:<br>=C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 s =3D __expand_var_regexp__.sub(varparse.var_sub, s)<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0try:<br>=C2=A0 File &quot;/home/joel-cohen/code/waveos2/poky/bitbake/lib=
/bb/data_smart.py&quot;, line 108, in VariableParse.var_sub(match=3D&lt;_sr=
e.SRE_Match object; span=3D(9, 17), match=3D&#39;${SRCPV}&#39;&gt;):<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0raise Exception(&quot;variable %s references itself!&quot; % s=
elf.varname)<br>=C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 var =3D self.d.getVarFlag(key, &quot;_content&quot;)<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.references.add(key)<br>=
=C2=A0 File &quot;/home/joel-cohen/code/waveos2/poky/bitbake/lib/bb/data_sm=
art.py&quot;, line 808, in DataSmart.getVarFlag(var=3D&#39;SRCPV&#39;, flag=
=3D&#39;_content&#39;, expand=3DTrue, noweakdefault=3DFalse, parsing=3DFals=
e, retparser=3DFalse):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i=
f expand or retparser:<br>=C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 parser =3D self.expandWithRefs(value, cachename)<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if expand:<br>=C2=A0 File &quot;/home=
/joel-cohen/code/waveos2/poky/bitbake/lib/bb/data_smart.py&quot;, line 430,=
 in DataSmart.expandWithRefs(s=3D&#39;${@bb.fetch2.get_srcrev(d)}&#39;, var=
name=3D&#39;SRCPV&#39;):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0except Exception as exc:<br>=C2=A0 =C2=A0 &gt;=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 raise ExpansionError(varname,=
 s, exc) from exc<br>=C2=A0 =C2=A0 =C2=A0<br>bb.data_smart.ExpansionError: =
Failure expanding variable SRCPV, expression was ${@bb.fetch2.get_srcrev(d)=
} which triggered exception AttributeError: &#39;FetchData&#39; object has =
no attribute &#39;moddir&#39;</blockquote><div><br></div><div>I&#39;ve fixe=
d this with the following patch, which moves some code in the Hg fetcher to=
 later in the urldata_init method, after some necessary variables have been=
 initialized. I&#39;m not sure if I&#39;m alone in seeing this problem or n=
ot?</div><div><br></div><div>Thanks for any help,</div><div>Aaron</div><div=
><br></div><div><br></div></div></div>
</blockquote></div>

--000000000000dc439f057b975fe5--
