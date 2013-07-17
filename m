Return-Path: <b.hutchman@gmail.com>
Received: from mail-oa0-f50.google.com (mail-oa0-f50.google.com
	[209.85.219.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4A98E01525
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 06:12:36 -0700 (PDT)
Received: by mail-oa0-f50.google.com with SMTP id k7so2483676oag.37
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 06:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=4tOXswmTSqOPZNpmpeT+bsm6rJin4tl7RAK+WqeDcVA=;
	b=cvszHJt3i6uz8xJYqMVyd1P872SrJtZO/33eawgkzwR5EmPya/Lv5qw0qc4hihjhAy
	K10cpytQ2Dv5AepiEa8G3BMfS7PPYAlC7nNblG0V2EKf2Cl271SOrBVmdzV8E7t+eQOM
	JsM0BKT6gDRvFTMID0x6oiq+22IZ2gPuMJvbmQV7208piAfM96eLRmVxP8oX/Jf4NGLa
	YiZXca0JR+/eN8ieq4umveLhkkbdIqg7Ck/gzjorKZsN4/N1ieyXnLTvBnDp2Nln+SZs
	l/5/0FrJJ48ASu9kqgSUeUqed8TxHl5RjgvtIrxA5lIjYnnEwugw8Nb63pB7ADSOG4+f
	T8Fw==
MIME-Version: 1.0
X-Received: by 10.182.225.134 with SMTP id rk6mr2431401obc.40.1374066755865;
	Wed, 17 Jul 2013 06:12:35 -0700 (PDT)
Received: by 10.60.26.225 with HTTP; Wed, 17 Jul 2013 06:12:35 -0700 (PDT)
In-Reply-To: <1443099.tO82y7b3tx@helios>
References: <CAFZh4h-cZH_CU--Vsjq7=97HDbQXH67SCO5aKYR9cX7h4uNxuQ@mail.gmail.com>
	<59742333.4mCOApeMVS@helios>
	<CAFZh4h9NzZwLSm5wmnqs8WU5A1hfpBY4z8ryH14eg724QhZvQg@mail.gmail.com>
	<1443099.tO82y7b3tx@helios>
Date: Wed, 17 Jul 2013 09:12:35 -0400
Message-ID: <CAFZh4h-voz9rch_kDu7dYd+jFjC-AO5HUzK70JT3uOb-W4LBAw@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto + meta-networking
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
X-List-Received-Date: Wed, 17 Jul 2013 13:12:43 -0000
Content-Type: multipart/alternative; boundary=001a11c2f800e1946404e1b4d811

--001a11c2f800e1946404e1b4d811
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jul 17, 2013 at 9:03 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Wednesday 17 July 2013 08:56:34 Brian Hutchinson wrote:
> > Thanks Paul, I worried about mixing branches since I've never tried that
> > before.  The only reason I picked Denzil is because I need ti816x support
> > and Dylan and Danny don't have machine confs for it in meta-ti.  So what
> > would be easier, getting the machine support I need in Dylan or back
> > porting the net-snmp recipe to Denzil?
>
> I don't have a feel for the former - if the reason is not already clear
> you'd
> probably want to ask the meta-ti folks why that machine isn't supported in
> later branches and how hard it would be to update support. This might be
> worth
> doing if you're starting something new with denzil, since that's two
> versions
> behind current stable.
>
> Having said that, backporting the net-snmp recipe should be fairly trivial
> though.
>
> Thanks.  Yea, with Classic everything was just there (warts and all) and
as I move more of our platforms to OE-Core I find that support for machines
(some old, some new) or recipes that I used to use aren't there so I'm not
too adept to figuring out how to wire everything back together to get what
I need.  I use the oe layer index search feature a lot! :)

Regards,

Brian

--001a11c2f800e1946404e1b4d811
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 17, 2013 at 9:03 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@=
linux.intel.com</a>&gt;</span> wrote:<br><div class=3D"gmail_quote"><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">
<div class=3D"im">On Wednesday 17 July 2013 08:56:34 Brian Hutchinson wrote=
:<br>
&gt; Thanks Paul, I worried about mixing branches since I&#39;ve never trie=
d that<br>
&gt; before. =A0The only reason I picked Denzil is because I need ti816x su=
pport<br>
&gt; and Dylan and Danny don&#39;t have machine confs for it in meta-ti. =
=A0So what<br>
&gt; would be easier, getting the machine support I need in Dylan or back<b=
r>
&gt; porting the net-snmp recipe to Denzil?<br>
<br>
</div>I don&#39;t have a feel for the former - if the reason is not already=
 clear you&#39;d<br>
probably want to ask the meta-ti folks why that machine isn&#39;t supported=
 in<br>
later branches and how hard it would be to update support. This might be wo=
rth<br>
doing if you&#39;re starting something new with denzil, since that&#39;s tw=
o versions<br>
behind current stable.<br>
<br>
Having said that, backporting the net-snmp recipe should be fairly trivial<=
br>
though.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div>T=
hanks. =A0Yea, with Classic everything was just there (warts and all) and a=
s I move more of our platforms to OE-Core I find that support for machines =
(some old, some new) or recipes that I used to use aren&#39;t there so I&#3=
9;m not too adept to figuring out how to wire everything back together to g=
et what I need. =A0I use the oe layer index search feature a lot! :)</div>
<div><br></div><div>Regards,</div><div><br></div><div>Brian</div></div>

--001a11c2f800e1946404e1b4d811--
