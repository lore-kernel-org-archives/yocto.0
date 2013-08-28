Return-Path: <b.hutchman@gmail.com>
Received: from mail-oa0-f44.google.com (mail-oa0-f44.google.com
	[209.85.219.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72BA3E01570
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 14:38:32 -0700 (PDT)
Received: by mail-oa0-f44.google.com with SMTP id l17so3993965oag.31
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 14:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ByJq7tIdz+DxggdjjRd3d5uwYDu7CkNaZZHk9VTrPFA=;
	b=cfDe3QStSQy8fTm/siog+zu8ydQExEa1l/kkFeyP2R9nZmovAOaOWEMebm0ZGrendx
	IbcXpmiCIxiQ6kEjUtNSizU8ddXd2QS5cInC102aOnBvVzn1bNpxJu7NSROlLC/qPOzI
	Dao3yW7kEN92BfwF6Fmowa4mRUC/RhtoU31ENyNnums7FU7B6siKyu8rgqJnh7cXZBTL
	OK9U/TTOzaBVvyQMl80WDq+PrcTns1ZhlIN/Ht6vzmsilZrnHRB2VhiFLIGVOdKbZQcP
	7/d03cig23x/JM1oN4ovcn478gY9ddlSST96aLNn5/rtxjgByRHZP1ll0W9ADoEpYVuP
	gRww==
MIME-Version: 1.0
X-Received: by 10.182.220.199 with SMTP id py7mr8266835obc.92.1377725911807;
	Wed, 28 Aug 2013 14:38:31 -0700 (PDT)
Received: by 10.60.142.41 with HTTP; Wed, 28 Aug 2013 14:38:31 -0700 (PDT)
Received: by 10.60.142.41 with HTTP; Wed, 28 Aug 2013 14:38:31 -0700 (PDT)
In-Reply-To: <521E6007.7090108@pabigot.com>
References: <CAFZh4h_2zm=TU5Egmfxqkj9aUZoFf-zrXPB3TbtK03C3RfLFcg@mail.gmail.com>
	<CAFZh4h_izMzmN-nzBLH7myJtiLWGz0EdKce7MJYw1KkjzPhpmA@mail.gmail.com>
	<521E6007.7090108@pabigot.com>
Date: Wed, 28 Aug 2013 17:38:31 -0400
Message-ID: <CAFZh4h9ASkGGadMNTPCoj-qDbo3ednnawcEVYdzpp5CRcwQmYA@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: "Peter A. Bigot" <pab@pabigot.com>
Cc: yocto@yoctoproject.org
Subject: Re: Is there a OE core based mgetty?
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
X-List-Received-Date: Wed, 28 Aug 2013 21:38:33 -0000
Content-Type: multipart/alternative; boundary=001a11c334aa923e1b04e508cfb3

--001a11c334aa923e1b04e508cfb3
Content-Type: text/plain; charset=ISO-8859-1

On Aug 28, 2013 4:39 PM, "Peter A. Bigot" <pab@pabigot.com> wrote:
>
> On 08/28/2013 03:19 PM, Brian Hutchinson wrote:
>>
>> On Tue, Aug 27, 2013 at 6:56 PM, Brian Hutchinson <b.hutchman@gmail.com>
wrote:
>>>
>>> Hi,
>>>
>>> I need mgetty and don't see it anywhere in any of the OE core based
layers.  Did something replace it?  I'm trying to migrate some OE classic
work to OE core based distros.
>>>
>>> Regards,
>>>
>>> Brian
>>
>>
>> Ping!  I'll take that as a "No" then.  :)
>>
>> So .... I'm working on adding this to OE Core based distros ... should
it go in meta/recipes-connectivity?  The ppp stuff is in
meta/recipes-connectivity so I'm thinking that's where it belongs???
>
>
> FWIW, linux-utils provides agetty; busybox also has a getty (was in
tinylogin in earlier versions, but should be in busybox now).  Dunno if
those would meet your needs.
>
> Peter
>

I need modem control.   I'm moving an existing product (OE Classic based)
into the OE Core world and it uses mgetty with modems (cellular modems).

Regards,

Brian

--001a11c334aa923e1b04e508cfb3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Aug 28, 2013 4:39 PM, &quot;Peter A. Bigot&quot; &lt;<a href=3D"mailto:p=
ab@pabigot.com">pab@pabigot.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On 08/28/2013 03:19 PM, Brian Hutchinson wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Aug 27, 2013 at 6:56 PM, Brian Hutchinson &lt;<a href=3D"m=
ailto:b.hutchman@gmail.com">b.hutchman@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I need mgetty and don&#39;t see it anywhere in any of the OE c=
ore based layers.=A0 Did something replace it?=A0 I&#39;m trying to migrate=
 some OE classic work to OE core based distros.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Regards,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Brian<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Ping!=A0 I&#39;ll take that as a &quot;No&quot; then.=A0 :)=A0 <br=
>
&gt;&gt;<br>
&gt;&gt; So .... I&#39;m working on adding this to OE Core based distros ..=
. should it go in meta/recipes-connectivity?=A0 The ppp stuff is in meta/re=
cipes-connectivity so I&#39;m thinking that&#39;s where it belongs???<br>

&gt;<br>
&gt;<br>
&gt; FWIW, linux-utils provides agetty; busybox also has a getty (was in ti=
nylogin in earlier versions, but should be in busybox now).=A0 Dunno if tho=
se would meet your needs.<br>
&gt;<br>
&gt; Peter<br>
&gt;</p>
<p dir=3D"ltr">I need modem control.=A0=A0 I&#39;m moving an existing produ=
ct (OE Classic based) into the OE Core world and it uses mgetty with modems=
 (cellular modems).</p>
<p dir=3D"ltr">Regards,</p>
<p dir=3D"ltr">Brian<br>
</p>

--001a11c334aa923e1b04e508cfb3--
