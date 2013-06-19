Return-Path: <varun292006@gmail.com>
Received: from mail-pb0-f47.google.com (mail-pb0-f47.google.com
	[209.85.160.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29E1DE00348
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 09:10:35 -0700 (PDT)
Received: by mail-pb0-f47.google.com with SMTP id rr13so5222456pbb.34
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 09:10:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=2sie6WWUirFiEDu3AGcL3tGIjz3+HbGMgXSdxUUgivM=;
	b=pW0YurvISNdaSNtxmtO6Sq53Q+HQ0dPD1OqpxevMvCYwbs0BSXRpO67M3AhhtTnauX
	IjqDWWKlKzMX3wN2uVSdoFjLsnlEp5s2A7roCB5uwdse9nUBmIDh2fFTlUFgvyhPUSpj
	KeVTWSjH9Coq9RGCCiXX/Sa1f/epG6kHM/RmLRZCn9eFk5v5PpW3uOVnfy+WlsqKJMVp
	N7zJ5AkIFW9H4grBBzDYHRM6DcA+9mdLmCJP+41IwDeenCjPVgnHYcju+gWDCgvNELMf
	GbZAEMGBgCxOpqcxhz5Fnf5cN0RFHpUX2xJUbGwUTI9L+/oQGQHkdSV30Dy04VkLCuel
	6lmg==
MIME-Version: 1.0
X-Received: by 10.66.120.164 with SMTP id ld4mr7413186pab.187.1371658235589;
	Wed, 19 Jun 2013 09:10:35 -0700 (PDT)
Received: by 10.68.112.65 with HTTP; Wed, 19 Jun 2013 09:10:35 -0700 (PDT)
In-Reply-To: <51C08D9C.6010405@mlbassoc.com>
References: <CAGxOggHpJNSb6vetbD40+ww-iyVxS3cUaZVhOF1t_OFCfQ4zSw@mail.gmail.com>
	<51BF484F.9070009@mlbassoc.com>
	<CAGxOggHuW93fygtGt037LLX1PFzgGzqDr3au1GV76hAaSnka6w@mail.gmail.com>
	<CAGX3a98bY4yx21Wj8ciSeDcz_=ew+6Zvn1+Ciwm-ou8a_MF48A@mail.gmail.com>
	<CAGxOggFiUojWMpYUd7J0BfpRhPnwbu+pH89p9CEkjdDjRs6BgQ@mail.gmail.com>
	<51C08D9C.6010405@mlbassoc.com>
Date: Wed, 19 Jun 2013 21:40:35 +0530
Message-ID: <CAGxOggH4UzCDOE5m=qFTPMDYmO1-jdtV1KtTn0XmyAnEd_pSfg@mail.gmail.com>
From: varun bhatnagar <varun292006@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Layers not getting recognized by bitbake
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
X-List-Received-Date: Wed, 19 Jun 2013 16:10:36 -0000
X-Groupsio-MsgNum: 14477
Content-Type: multipart/mixed; boundary=047d7b0721cee2b94604df84115c

--047d7b0721cee2b94604df84115c
Content-Type: multipart/alternative; boundary=047d7b0721cee2b94304df84115a

--047d7b0721cee2b94304df84115a
Content-Type: text/plain; charset=ISO-8859-1

Thanks for the reply Gary. I am attaching recipe file below. Please have a
look at it. And yes, there is a line where in all the dependencies are
given.
And this is the link from where I created the layer :
http://cgit.openembedded.org/meta-openembedded/tree/

//
Varun


On Tue, Jun 18, 2013 at 10:11 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2013-06-18 17:28, varun bhatnagar wrote:
>
>> I am building one of my application using yocto by giving bitbake -k
>> core-image-minimal command but I am facing some errors as this application
>> requires two libraries
>> *1) net-snmp*
>> *2) fuse*
>> *
>>
>> *
>> I have one link where in they are asking to add these two libraries in
>> the form of layers and then execute bitbake -k core-image-minimal command.
>>
>> I am pasting one screenshot below:
>>
>> As you can I have added two layers meta-networking (contains net-snmp)
>> and meta-oe(contains fuse). After this I added these layers in
>> *build/conf/bblayer.conf.*
>> *
>> *
>> *
>>
>> *
>> After this I again executed bitbake -k core-image-minimal command but I
>> faced the same error as before... :(
>> Is there anyway that these layers get recognized? Do I need to execute
>> some other command?
>>
>
> Obviously, this is a recipe that you made.
>
> Does it show these dependencies?  e.g. a line like this in your recipe
> file:
>   DEPENDS = "net-snmp fuse"
> (or whatever the *packages* that you need are)
>
> Bitbake can't read your mind; it will only build the recipes you ask and
> the
> dependencies which are explicitly specified in that build chain.
>
> If you still have trouble, try sending your recipe (.bb file and all other
> components you might have), bblayers.conf, etc to the list because we're
> not
> mind readers either :-)
>
>
>> On Tue, Jun 18, 2013 at 2:32 AM, Sudhangathan B S <sudhangathan@gmail.com<mailto:
>> sudhangathan@gmail.com**>> wrote:
>>
>>     Can you please paste your command and it's output here..! If you
>> don't mind..!! Or explain with equivalent clarity. It
>>     l will good if you can also put in your directory structure.
>>
>>     ------------------------------**---
>>     Sudhangathan BS
>>     Ph:(+91) 9731-905-205
>>     ------------------------------**---
>>
>>
>>     On Mon, Jun 17, 2013 at 11:33 PM, varun bhatnagar <
>> varun292006@gmail.com <mailto:varun292006@gmail.com>**> wrote:
>>
>>         Actually the package which I am building is having some
>> dependencies on some libraries. So I provided those libraries with the help
>> of creating layers. I did not extract
>>         those from meta-openembedded, instead, I manually created two
>> layers and added them in bblayer.conf file. Now, after configuring all this
>> stuff I am again trying to
>>         recompile my code but still I am getting the same error saying
>> that it is not able to find those libraries provided by me in the form of
>> layers.
>>
>>
>>         On Mon, Jun 17, 2013 at 11:03 PM, Gary Thomas <gary@mlbassoc.com<mailto:
>> gary@mlbassoc.com>> wrote:
>>
>>             On 2013-06-17 18:08, varun bhatnagar wrote:
>>
>>                 Hi,
>>
>>                 I am trying to compile my code using yocto. For that I
>> have created two layers: "meta-networking" and "meta-oe". I have added
>> these dependencies in bblayer.conf
>>                 too. But these are
>>                 not getting build. Can anyone please tell me what should
>> I do to make this work.
>>
>>
>>             More details are needed to be able to help.
>>
>>             What do you mean "not getting built"?  Do you mean that if you
>>             try to build recipe XYZ which is in one of those layers that
>> it's
>>             not being built?  Or perhaps you mean something else?
>>
>>             What do you mean "created two layers: ..."?  Did you just
>> extract
>>             these from meta-openembedded?  or something else?
>>
>>             --
>>             ------------------------------**
>> __----------------------------**--
>>
>>             Gary Thomas                 |  Consulting for the
>>             MLB Associates              |    Embedded world
>>             ------------------------------**
>> __----------------------------**--
>>             ______________________________**___________________
>>             yocto mailing list
>>             yocto@yoctoproject.org <mailto:yocto@yoctoproject.org**>
>>             https://lists.yoctoproject.__**org/listinfo/yocto <
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>> >
>>
>>
>>
>>         ______________________________**_________________
>>         yocto mailing list
>>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org**>
>>
>>         https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
>>
>>
>>
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
> --
> ------------------------------**------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------**------------------------------
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--047d7b0721cee2b94304df84115a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the reply Gary. I am attaching recipe file belo=
w. Please have a look at it. And yes, there is a line where in all the depe=
ndencies are given.=A0<div>And this is the link from where I created the la=
yer :=A0<a href=3D"http://cgit.openembedded.org/meta-openembedded/tree/">ht=
tp://cgit.openembedded.org/meta-openembedded/tree/</a><br>
<div><br></div><div><div>//</div><div style>Varun</div><div><div class=3D"g=
mail_extra"><br><br><div class=3D"gmail_quote">On Tue, Jun 18, 2013 at 10:1=
1 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com=
" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div>On 2013-06-18 17:28, varun bhatnagar wrote:<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:s=
olid;padding-left:1ex"><div>
I am building one of my application using yocto by giving bitbake -k core-i=
mage-minimal command but I am facing some errors as this application requir=
es two libraries<br></div>
*1) net-snmp*<br>
*2) fuse*<br>
*<div><br>
*<br>
I have one link where in they are asking to add these two libraries in the =
form of layers and then execute bitbake -k core-image-minimal command.<br>
<br>
I am pasting one screenshot below:<br>
<br></div>
As you can I have added two layers meta-networking (contains net-snmp) and =
meta-oe(contains fuse). After this I added these layers in *build/conf/bbla=
yer.conf.*<br>
*<br>
*<br>
*<div><br>
*<br>
After this I again executed bitbake -k core-image-minimal command but I fac=
ed the same error as before... :(<br>
Is there anyway that these layers get recognized? Do I need to execute some=
 other command?<br>
</div></blockquote>
<br>
Obviously, this is a recipe that you made.<br>
<br>
Does it show these dependencies? =A0e.g. a line like this in your recipe fi=
le:<br>
=A0 DEPENDS =3D &quot;net-snmp fuse&quot;<br>
(or whatever the *packages* that you need are)<br>
<br>
Bitbake can&#39;t read your mind; it will only build the recipes you ask an=
d the<br>
dependencies which are explicitly specified in that build chain.<br>
<br>
If you still have trouble, try sending your recipe (.bb file and all other<=
br>
components you might have), bblayers.conf, etc to the list because we&#39;r=
e not<br>
mind readers either :-)<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div>
<br>
On Tue, Jun 18, 2013 at 2:32 AM, Sudhangathan B S &lt;<a href=3D"mailto:sud=
hangathan@gmail.com" target=3D"_blank">sudhangathan@gmail.com</a> &lt;mailt=
o:<a href=3D"mailto:sudhangathan@gmail.com" target=3D"_blank">sudhangathan@=
gmail.com</a><u></u>&gt;&gt; wrote:<br>


<br>
=A0 =A0 Can you please paste your command and it&#39;s output here..! If yo=
u don&#39;t mind..!! Or explain with equivalent clarity. It<br>
=A0 =A0 l will good if you can also put in your directory structure.<br>
<br>
=A0 =A0 ------------------------------<u></u>---<br>
=A0 =A0 Sudhangathan BS<br>
=A0 =A0 Ph:(+91) 9731-905-205<br>
=A0 =A0 ------------------------------<u></u>---<br>
<br>
<br></div><div>
=A0 =A0 On Mon, Jun 17, 2013 at 11:33 PM, varun bhatnagar &lt;<a href=3D"ma=
ilto:varun292006@gmail.com" target=3D"_blank">varun292006@gmail.com</a> &lt=
;mailto:<a href=3D"mailto:varun292006@gmail.com" target=3D"_blank">varun292=
006@gmail.com</a>&gt;<u></u>&gt; wrote:<br>


<br>
=A0 =A0 =A0 =A0 Actually the package which I am building is having some dep=
endencies on some libraries. So I provided those libraries with the help of=
 creating layers. I did not extract<br>
=A0 =A0 =A0 =A0 those from meta-openembedded, instead, I manually created t=
wo layers and added them in bblayer.conf file. Now, after configuring all t=
his stuff I am again trying to<br>
=A0 =A0 =A0 =A0 recompile my code but still I am getting the same error say=
ing that it is not able to find those libraries provided by me in the form =
of layers.<br>
<br>
<br></div><div>
=A0 =A0 =A0 =A0 On Mon, Jun 17, 2013 at 11:03 PM, Gary Thomas &lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;m=
ailto:<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.=
com</a>&gt;&gt; wrote:<br>


<br>
=A0 =A0 =A0 =A0 =A0 =A0 On 2013-06-17 18:08, varun bhatnagar wrote:<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Hi,<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 I am trying to compile my code using yocto.=
 For that I have created two layers: &quot;meta-networking&quot; and &quot;=
meta-oe&quot;. I have added these dependencies in bblayer.conf<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 too. But these are<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 not getting build. Can anyone please tell m=
e what should I do to make this work.<br>
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 More details are needed to be able to help.<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 What do you mean &quot;not getting built&quot;? =A0=
Do you mean that if you<br>
=A0 =A0 =A0 =A0 =A0 =A0 try to build recipe XYZ which is in one of those la=
yers that it&#39;s<br>
=A0 =A0 =A0 =A0 =A0 =A0 not being built? =A0Or perhaps you mean something e=
lse?<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 What do you mean &quot;created two layers: ...&quot=
;? =A0Did you just extract<br>
=A0 =A0 =A0 =A0 =A0 =A0 these from meta-openembedded? =A0or something else?=
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 --<br></div>
=A0 =A0 =A0 =A0 =A0 =A0 ------------------------------<u></u>__------------=
----------------<u></u>--<div><br>
=A0 =A0 =A0 =A0 =A0 =A0 Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Co=
nsulting for the<br>
=A0 =A0 =A0 =A0 =A0 =A0 MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0=
Embedded world<br></div>
=A0 =A0 =A0 =A0 =A0 =A0 ------------------------------<u></u>__------------=
----------------<u></u>--<br>
=A0 =A0 =A0 =A0 =A0 =A0 ______________________________<u></u>______________=
_____<br>
=A0 =A0 =A0 =A0 =A0 =A0 yocto mailing list<br>
=A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"mailto:yocto@yoctoproject.org" target=3D=
"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoct=
oproject.org" target=3D"_blank">yocto@yoctoproject.org</a><u></u>&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"https://lists.yoctoproject." target=3D"_=
blank">https://lists.yoctoproject.</a>__<u></u>org/listinfo/yocto &lt;<a hr=
ef=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">http=
s://lists.yoctoproject.<u></u>org/listinfo/yocto</a>&gt;<br>


<br>
<br>
<br>
=A0 =A0 =A0 =A0 ______________________________<u></u>_________________<br>
=A0 =A0 =A0 =A0 yocto mailing list<br>
=A0 =A0 =A0 =A0 <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject=
.org" target=3D"_blank">yocto@yoctoproject.org</a><u></u>&gt;<div><br>
=A0 =A0 =A0 =A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" t=
arget=3D"_blank">https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><b=
r>
<br>
<br>
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
</div></blockquote><div><div>
<br>
-- <br>
------------------------------<u></u>------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------<u></u>------------------------------<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div></div></div></div></div>

--047d7b0721cee2b94304df84115a--

--047d7b0721cee2b94604df84115c
Content-Type: text/plain; charset=US-ASCII; name="myRecipe.bb.txt"
Content-Disposition: attachment; filename="myRecipe.bb.txt"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hi4ptvni0

REVTQ1JJUFRJT04gPSAiYml0YWtlIGZpbGUiDQpERVBFTkRTID0gIm5ldC1zbm1wIGZ1c2UiDQpS
REVQRU5EUyA9ICJjdXJsIHJwbSBvcGVuc3NoIG9wZW5sZGFwIHByb2NwcyBwc21pc2Mgc2VkIG5l
dC1zbm1wLXNlcnZlciINCkxJQ0VOU0UgPSAiR1BMdjIrIg0KUFIgPSAicjAiDQpTUkNfVVJJID0g
ImZpbGU6Ly8vaG9tZS91c2VyL015YXBwLnRhci5neiINCkVYVFJBX09FQ01BS0UgKz0gIi1EQ01B
S0VfRklORF9ST09UX1BBVEg9JHtTVEFHSU5HX0RJUl9IT1NUfSAiDQpFWFRSQV9PRUNNQUtFICs9
ICItRFRBUkdFVF9BUkNISVRFQ1RVUkU9JHtUQVJHRVRfQVJDSH0gIg0KRVhUUkFfT0VDTUFLRSAr
PSAiLURDTUFLRV9TWVNURU1fTkFNRT1MaW51eCAiDQpFWFRSQV9PRUNNQUtFICs9ICItRENNQUtF
X1NZU1RFTV9WRVJTSU9OPTEgIg0KRVhUUkFfT0VDTUFLRSArPSAiLURSU1RBVEU9JHtQUn0gIg0K
RVhUUkFfT0VDTUFLRSArPSAiLURDTUFLRV9GSU5EX1JPT1RfUEFUSF9NT0RFX1BST0dSQU09TkVW
RVIgIg0KRVhUUkFfT0VDTUFLRSArPSAiLURDTUFLRV9GSU5EX1JPT1RfUEFUSF9NT0RFX0xJQlJB
Ulk9T05MWSAiDQpFWFRSQV9PRUNNQUtFICs9ICItRENNQUtFX0ZJTkRfUk9PVF9QQVRIX01PREVf
SU5DTFVERT1PTkxZICINCkVYVFJBX09FQ01BS0UgKz0gIi1EUlBNPTEgIg0KIA0KaW5oZXJpdCBj
bWFrZQ0KIA0KZG9fY29uZmlndXJlKCl7DQogICAgICAgIGNtYWtlIC4uJHtFWFRSQV9PRUNNQUtF
fQ0KfQ0KIA0KZG9fY29tcGlsZSgpew0KICAgICAgICBvZV9ydW5tYWtlIGFsbA0KfQ==

--047d7b0721cee2b94604df84115c--
