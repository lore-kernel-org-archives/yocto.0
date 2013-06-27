Return-Path: <peachj@lexmark.com>
Received: from exprod8og113.obsmtp.com (exprod8og113.obsmtp.com [64.18.3.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E05D9E0144E
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 05:56:22 -0700 (PDT)
Received: from mail-oa0-f43.google.com ([209.85.219.43]) (using TLSv1) by
	exprod8ob113.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUcw2dWy1DiwJ1T8FamjZZU+UJo6Oe5F+@postini.com;
	Thu, 27 Jun 2013 05:56:24 PDT
Received: by mail-oa0-f43.google.com with SMTP id i7so791472oag.16
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 05:56:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=8Yix01mDUa8CV5C+ZwQt4oTbXzKVBx91IOQgsxj73hk=;
	b=SEZZNCQ80IGAjCAtDU6qLFA9AInuaWMrYJAJLOu54Ulr0sbk8NWyDDmcbexlu/kISr
	MOhyJS5Xs1XbJqxfcPHvk3/HqSp+aKHXPx6h3PjU2bcNC9EcvbqFkq4cmKcPS5HC35QC
	CDRK5Th+GKkeA79IMGSduWFH5bERfBt/ZnIs84I78/62K+9H3Sg32ZkcKiwUOZS00ea9
	mui/D1MQNb6d/BfcMamBOoO+lb3G47kRz+ZWLGs8RRBJZ4QbW0ybclL4X5ngSj7rmrVf
	r9sylgW02jRGwve4JVRkXCjWxRVzz0ykqGAITc1/IeerkL8+VNmRBwVQTG4ZFXe+fBq3
	8y9Q==
X-Received: by 10.60.131.171 with SMTP id on11mr2779343oeb.71.1372337781177;
	Thu, 27 Jun 2013 05:56:21 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.60.131.171 with SMTP id on11mr2779333oeb.71.1372337781035;
	Thu, 27 Jun 2013 05:56:21 -0700 (PDT)
Received: by 10.76.163.70 with HTTP; Thu, 27 Jun 2013 05:56:20 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF51E45@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5182B@ORSMSX101.amr.corp.intel.com>
	<CA+QkY1BKJqnLcbJq786d3LjA6D7gDLLQifccMA4m9m0cKOXj+g@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF51E45@ORSMSX101.amr.corp.intel.com>
Date: Thu, 27 Jun 2013 08:56:20 -0400
Message-ID: <CA+QkY1Ap11Z1Juwqhgur3yxZNhUOeZYtwSx0fch4UMqWO6frOg@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Gm-Message-State: ALoCoQl1Lj15HYrs1wG/eOe6vZCveSeOxryaZbXLUUiVXrQXOHQ6+RMj5kHhaGlrjlGWr25bIYTg6DBBlqFrMR/la9BJleNGnibbJMbyWGl0MKgjpEImQBvrdjH016kfPjvZ9/69EcR956IV25LzwNAzZ48JX73055a4eEcOZ4eLvk3DFntIxv4=
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Layer input
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
X-List-Received-Date: Thu, 27 Jun 2013 12:56:25 -0000
Content-Type: multipart/alternative; boundary=047d7b471da4f363db04e0224995

--047d7b471da4f363db04e0224995
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Scott,

Getting closer to what I was thinking, but I still have a couple questions,
primarily regarding the BSP layer.

   - There are still a few references to <name>.  Shouldn't those also be
   <recipe>?
   - I'm still confused by the presence of all the specifically-named
   recipes-* directories.  I tried running yocto-layer and I didn't get any=
 of
   those present.  I couldn't find the bsp-layer tool, but I'll grant I did=
n't
   search really hard.  (I only checked out master of poky and searched aro=
und
   a bit.)  What's making you want to put them all in this diagram?

Also, it strikes me that bblayers.conf needs to show up in this diagram
somewhere, I think, since it controls what layers bitbake sees.

Kind regards,

Jerrod


On Thu, Jun 27, 2013 at 3:41 AM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

>  Hi, ****
>
> ** **
>
> I have tweaked this figure some based on Bruce and Jerrod=92s input.  To
> help me figure out some of the basics, I ran the yocto-layer and bsp-laye=
r
> scripts to create a general and BSP layer, respectively.  Please look ove=
r
> the contents of these layers and comment.  General comments on the whole
> concept of how I am presenting the layers are welcome along with any othe=
r
> observations.  ****
>
> ** **
>
> Thanks, ****
>
> Scott****
>
> ** **
>
> *From:* Jerrod Peach [mailto:peachj@lexmark.com]
> *Sent:* Tuesday, June 25, 2013 11:07 AM
>
> *To:* Rifenbark, Scott M
> *Cc:* yocto@yoctoproject.org; Paul Eggleton
> *Subject:* Re: [yocto] Layer input****
>
>  ** **
>
> Scott,****
>
>    - Distro Layer****
>
>
>     - I'm unclear on what <name> is.  Is that supposed to be <distro>?
>        <recipe>?  It probably shouldn't just be <name>, should it?****
>
>
>    - Software Layer****
>
>
>     - Should COPYING.MIT just be COPYING to be more generically
>       applicable?****
>       - conf/<layer_name>.conf should be just layer.conf, right?****
>
>
>    - BSP Layer****
>
>
>     - COPYING.MIT file again.****
>       - machine/<name>.conf should probably be machine/<machine*>.conf.
>        You can probably drop the non-asterisk version, since an asterisk =
implies,
>       "There might be more stuff, there might not."****
>       - recipes-bsp/formfactor shouldn't also have another formfactor
>       directory, should it?  Or is the "files" directory in 1.4 replaced =
with
>       another formfactor-named directory?  Also, <name> should be <machin=
e> again.
>       ****
>       - What's everything from recipes-core down?  I can buy
>       recipes-kernel being in a bsp, but are any other directories really
>       necessary?****
>
>  Kind regards,****
>
> ** **
>
> Jerrod****
>
> ** **
>
> On Tue, Jun 25, 2013 at 8:35 AM, Rifenbark, Scott M <
> scott.m.rifenbark@intel.com> wrote:****
>
> Hi,
>
> This next illustration attempting to dive deeper in the YP Development
> Process takes the remaining left-side input from that figure in the Quick
> Start (metadata, Machine, and Policy).  Note that when the original figur=
e
> was created that appears in the QS, the layer stuff had not yet been
> established.  This figure I am attaching is rough.  I am unsure as to the
> contents of these layers.  Right now it is detailed but with generic name=
s.
>  The idea is that individual layers are preferred to do things such as
> provide software, configure policy, and configure machines.  I am includi=
ng
> some notes at the bottom of the figure that would not be part of the figu=
re
> but might help to get across what I am trying to accomplish here.
>
> Any suggestions and feedback is really appreciated.
>
> Thanks,
> Scott
>
> Scott Rifenbark
> Intel Corporation
> Yocto Project Documentation
> 503.712.2702
> 503.341.0418 (cell)
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto****
>
> ** **
>

--047d7b471da4f363db04e0224995
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style>Scott,</div><div><br></div>Getting closer to wh=
at I was thinking, but I still have a couple questions, primarily regarding=
 the BSP layer.<div><ul style><li style>There are still a few references to=
 &lt;name&gt;. =A0Shouldn&#39;t those also be &lt;recipe&gt;?</li>
<li style>I&#39;m still confused by the presence of all the specifically-na=
med recipes-* directories. =A0I tried running yocto-layer and I didn&#39;t =
get any of those present. =A0I couldn&#39;t find the bsp-layer tool, but I&=
#39;ll grant I didn&#39;t search really hard. =A0(I only checked out master=
 of poky and searched around a bit.) =A0What&#39;s making you want to put t=
hem all in this diagram?</li>
</ul><div style>Also, it strikes me that bblayers.conf needs to show up in =
this diagram somewhere, I think, since it controls what layers bitbake sees=
.</div><div><br></div><div style>Kind regards,</div></div><div style><br>
</div><div style>Jerrod</div></div><div class=3D"gmail_extra"><br><br><div =
class=3D"gmail_quote">On Thu, Jun 27, 2013 at 3:41 AM, Rifenbark, Scott M <=
span dir=3D"ltr">&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com" target=
=3D"_blank">scott.m.rifenbark@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hi,
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">I have tweaked this figur=
e some based on Bruce and Jerrod=92s input.=A0 To help me figure out some o=
f the basics, I ran the yocto-layer and bsp-layer scripts to
 create a general and BSP layer, respectively.=A0 Please look over the cont=
ents of these layers and comment. =A0General comments on the whole concept =
of how I am presenting the layers are welcome along with any other observat=
ions.=A0
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks,
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Scott<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Jerrod P=
each [mailto:<a href=3D"mailto:peachj@lexmark.com" target=3D"_blank">peachj=
@lexmark.com</a>]
<br>
<b>Sent:</b> Tuesday, June 25, 2013 11:07 AM</span></p><div class=3D"im"><b=
r>
<b>To:</b> Rifenbark, Scott M<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a>; Paul Eggleton<br>
<b>Subject:</b> Re: [yocto] Layer input<u></u><u></u></div><p></p><span cla=
ss=3D"HOEnZb"><font color=3D"#888888">
</font></span></div><span class=3D"HOEnZb"><font color=3D"#888888">
</font></span></div><span class=3D"HOEnZb"><font color=3D"#888888">
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</font></span><div><span class=3D"HOEnZb"><font color=3D"#888888">
<div>
<p class=3D"MsoNormal">Scott,<u></u><u></u></p>
</div></font></span><div><div class=3D"h5">
<ul type=3D"disc">
<li class=3D"MsoNormal">
Distro Layer<u></u><u></u></li></ul>
<ul type=3D"disc">
<ul type=3D"circle">
<li class=3D"MsoNormal">
I&#39;m unclear on what &lt;name&gt; is. =A0Is that supposed to be &lt;dist=
ro&gt;? =A0&lt;recipe&gt;? =A0It probably shouldn&#39;t just be &lt;name&gt=
;, should it?<u></u><u></u></li></ul>
</ul>
<ul type=3D"disc">
<li class=3D"MsoNormal">
Software Layer<u></u><u></u></li></ul>
<ul type=3D"disc">
<ul type=3D"circle">
<li class=3D"MsoNormal">
Should COPYING.MIT just be COPYING to be more generically applicable?<u></u=
><u></u></li><li class=3D"MsoNormal">
conf/&lt;layer_name&gt;.conf should be just layer.conf, right?<u></u><u></u=
></li></ul>
</ul>
<ul type=3D"disc">
<li class=3D"MsoNormal">
BSP Layer<u></u><u></u></li></ul>
<ul type=3D"disc">
<ul type=3D"circle">
<li class=3D"MsoNormal">
COPYING.MIT file again.<u></u><u></u></li><li class=3D"MsoNormal">
machine/&lt;name&gt;.conf should probably be machine/&lt;machine*&gt;.conf.=
 =A0You can probably drop the non-asterisk version, since an asterisk impli=
es, &quot;There might be more stuff, there might not.&quot;<u></u><u></u></=
li>
<li class=3D"MsoNormal">
recipes-bsp/formfactor shouldn&#39;t also have another formfactor directory=
, should it? =A0Or is the &quot;files&quot; directory in 1.4 replaced with =
another formfactor-named directory? =A0Also, &lt;name&gt; should be &lt;mac=
hine&gt; again.<u></u><u></u></li>
<li class=3D"MsoNormal">
What&#39;s everything from recipes-core down? =A0I can buy recipes-kernel b=
eing in a bsp, but are any other directories really necessary?<u></u><u></u=
></li></ul>
</ul>
<div>
<p class=3D"MsoNormal">Kind regards,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Jerrod<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><u></u>=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On Tue, Jun 25, 2013 at 8:35 AM, Rifenbark, Scott M =
&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott.=
m.rifenbark@intel.com</a>&gt; wrote:<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hi,<br>
<br>
This next illustration attempting to dive deeper in the YP Development Proc=
ess takes the remaining left-side input from that figure in the Quick Start=
 (metadata, Machine, and Policy). =A0Note that when the original figure was=
 created that appears in the QS, the
 layer stuff had not yet been established. =A0This figure I am attaching is=
 rough. =A0I am unsure as to the contents of these layers. =A0Right now it =
is detailed but with generic names. =A0The idea is that individual layers a=
re preferred to do things such as provide
 software, configure policy, and configure machines. =A0I am including some=
 notes at the bottom of the figure that would not be part of the figure but=
 might help to get across what I am trying to accomplish here.<br>
<br>
Any suggestions and feedback is really appreciated.<br>
<br>
Thanks,<br>
Scott<br>
<br>
Scott Rifenbark<br>
Intel Corporation<br>
Yocto Project Documentation<br>
<a href=3D"tel:503.712.2702" target=3D"_blank">503.712.2702</a><br>
<a href=3D"tel:503.341.0418" target=3D"_blank">503.341.0418</a>=A0(cell)<br=
>
<br>
<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
</div></div></div>
</div>
</div>
</div>

</blockquote></div><br></div>

--047d7b471da4f363db04e0224995--
