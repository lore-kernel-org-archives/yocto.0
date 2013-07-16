Return-Path: <b.hutchman@gmail.com>
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F968E0071F
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 14:47:40 -0700 (PDT)
Received: by mail-ob0-f181.google.com with SMTP id 16so1380560obc.26
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 14:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=arx7a/ke3g5th9LvXE7mshUJgr47WmxudnxCQRoqlBw=;
	b=dqPwytuePP8Kf2h8N5LgIm77eO3sySliJsY6Rdf5TPPyZNrUISbLL9PeXlfqmT+Uxc
	fpuBvuMIDwsHWFO/jgO1dvG7hDeDJws4PgHP9jPoddQ/GwY/G2f8Iiw4M6xujaL+rLf2
	3fNo7xjHqfwxN70uSiJEpeEJE+PlgOi7bNdUrhq+KRLCQAAS4o7JPXudtcycIDXMZ68T
	rdSoG7KqwMebzdkSs2Yzd3Di00XUb6ptwP4u3/lqWVAtQaGad47DspkYvf+xqPDxG0gt
	GhaYaTxGuYA7OKimzkn5je7ZUYMR9uFrf2oyVZMj60OKFX3v68VI9c0EwGDYgsex/ZmR
	66uw==
MIME-Version: 1.0
X-Received: by 10.60.37.74 with SMTP id w10mr4462046oej.30.1374011259947; Tue,
	16 Jul 2013 14:47:39 -0700 (PDT)
Received: by 10.60.26.225 with HTTP; Tue, 16 Jul 2013 14:47:39 -0700 (PDT)
Received: by 10.60.26.225 with HTTP; Tue, 16 Jul 2013 14:47:39 -0700 (PDT)
In-Reply-To: <51E5B8E9.60806@linux.intel.com>
References: <CAFZh4h-cZH_CU--Vsjq7=97HDbQXH67SCO5aKYR9cX7h4uNxuQ@mail.gmail.com>
	<51E5B8E9.60806@linux.intel.com>
Date: Tue, 16 Jul 2013 17:47:39 -0400
Message-ID: <CAFZh4h_oXO8myLp_=Ndj+TgEiFyxM6NaKD1kveRtEqOpNtGDnQ@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Saul Wold <sgw@linux.intel.com>
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
X-List-Received-Date: Tue, 16 Jul 2013 21:47:41 -0000
Content-Type: multipart/alternative; boundary=089e013cc49c110df804e1a7ed95

--089e013cc49c110df804e1a7ed95
Content-Type: text/plain; charset=ISO-8859-1

Hi Saul,

Sorry for top posting, I'm responding on my phone.

Yes, that's exactly how my bblayers.conf looks except when I had the first
problem I then added in meta-oe.  I'll double check and make sure I didn't
do something stupid like use a spoiled shell env etc.

Note, I didn't check out meta-openembedded to layers dir, I did it in the
same dir as poky ... maybe that is my problem.

Regards,

Brian
On Jul 16, 2013 5:19 PM, "Saul Wold" <sgw@linux.intel.com> wrote:

> On 07/16/2013 02:06 PM, Brian Hutchinson wrote:
>
>> Hi,
>>
>> What is the "right" way of adding the meta-networking to Yocto?  I'm
>> obviously not doing something right.
>>
>> At the poky directory level, I cloned meta-openembedded.  I then tried
>> to go to my build's local.conf and adding meta-networking and meta-oe
>> layers and I'm getting a dependency message when I try to bitbake
>> net-snmp that says:
>>
>>  Did you mean your bblayers.conf file?  I am not sure you need meta-oe if
> you are just building net-snmp, this is what your bblayers.conf should look
> like:
>
> BBLAYERS ?= " \
>   /home/sgw/yocto/poky/meta \
>   /home/sgw/yocto/poky/meta-**yocto \
>   /home/sgw/yocto/poky/meta-**yocto-bsp \
>   /home/sgw/yocto/layers/meta-**openembedded/meta-networking \
>   "
>
> This is from a POKY build, if this is oe-core alone then you would not
> have the meta-yocto* layers.
>
> Sau!
>
>
>  ERROR: Layer dependency core of layer networking not found
>>
>> This makes me think that meta-openembedded is wanting openembedded-core
>> but I've never tried to use that with Yocto before so I thought I better
>> ask before I totally mess up my build environment.
>>
>> I have a rootfilesystem build based on Denzil and I need net-snmp and
>> the meta-networking Denzil branch is pretty much empty so I cloned
>> master in order to get net-snmp so I don't know if mixing branches could
>> be my problem (don't know how much that matters but I usually try to use
>> the same release branch of various components).
>>
>> I've looked for examples of this kind of setup but haven't found much.
>>
>> Regards,
>>
>> Brian
>>
>>
>>
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>>

--089e013cc49c110df804e1a7ed95
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi Saul,</p>
<p dir=3D"ltr">Sorry for top posting, I&#39;m responding on my phone.</p>
<p dir=3D"ltr">Yes, that&#39;s exactly how my bblayers.conf looks except wh=
en I had the first problem I then added in meta-oe.=A0 I&#39;ll double chec=
k and make sure I didn&#39;t do something stupid like use a spoiled shell e=
nv etc.</p>

<p dir=3D"ltr">Note, I didn&#39;t check out meta-openembedded to layers dir=
, I did it in the same dir as poky ... maybe that is my problem.</p>
<p dir=3D"ltr">Regards, </p>
<p dir=3D"ltr">Brian</p>
<div class=3D"gmail_quote">On Jul 16, 2013 5:19 PM, &quot;Saul Wold&quot; &=
lt;<a href=3D"mailto:sgw@linux.intel.com">sgw@linux.intel.com</a>&gt; wrote=
:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
On 07/16/2013 02:06 PM, Brian Hutchinson wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi,<br>
<br>
What is the &quot;right&quot; way of adding the meta-networking to Yocto? =
=A0I&#39;m<br>
obviously not doing something right.<br>
<br>
At the poky directory level, I cloned meta-openembedded. =A0I then tried<br=
>
to go to my build&#39;s local.conf and adding meta-networking and meta-oe<b=
r>
layers and I&#39;m getting a dependency message when I try to bitbake<br>
net-snmp that says:<br>
<br>
</blockquote>
Did you mean your bblayers.conf file? =A0I am not sure you need meta-oe if =
you are just building net-snmp, this is what your bblayers.conf should look=
 like:<br>
<br>
BBLAYERS ?=3D &quot; \<br>
=A0 /home/sgw/yocto/poky/meta \<br>
=A0 /home/sgw/yocto/poky/meta-<u></u>yocto \<br>
=A0 /home/sgw/yocto/poky/meta-<u></u>yocto-bsp \<br>
=A0 /home/sgw/yocto/layers/meta-<u></u>openembedded/meta-networking \<br>
=A0 &quot;<br>
<br>
This is from a POKY build, if this is oe-core alone then you would not have=
 the meta-yocto* layers.<br>
<br>
Sau!<br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
ERROR: Layer dependency core of layer networking not found<br>
<br>
This makes me think that meta-openembedded is wanting openembedded-core<br>
but I&#39;ve never tried to use that with Yocto before so I thought I bette=
r<br>
ask before I totally mess up my build environment.<br>
<br>
I have a rootfilesystem build based on Denzil and I need net-snmp and<br>
the meta-networking Denzil branch is pretty much empty so I cloned<br>
master in order to get net-snmp so I don&#39;t know if mixing branches coul=
d<br>
be my problem (don&#39;t know how much that matters but I usually try to us=
e<br>
the same release branch of various components).<br>
<br>
I&#39;ve looked for examples of this kind of setup but haven&#39;t found mu=
ch.<br>
<br>
Regards,<br>
<br>
Brian<br>
<br>
<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
<br>
</blockquote>
</blockquote></div>

--089e013cc49c110df804e1a7ed95--
