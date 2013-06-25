Return-Path: <peachj@lexmark.com>
Received: from exprod8og119.obsmtp.com (exprod8og119.obsmtp.com [64.18.3.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41F09E01518
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 11:06:41 -0700 (PDT)
Received: from mail-ob0-f175.google.com ([209.85.214.175]) (using TLSv1) by
	exprod8ob119.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUcncMeaN1DATLnwBza9EHfqfSkptGoqC@postini.com;
	Tue, 25 Jun 2013 11:06:44 PDT
Received: by mail-ob0-f175.google.com with SMTP id xn12so12296113obc.20
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 11:06:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=95wGAdLEZ1J2sscmZ3WLsZZc4q4F3JswR57+7kiWEfE=;
	b=Dzttj1mcYQLh4YlqHZtXx8K1XkVj7ADmoO8FRCGy3zv1DcpYvVHq7/b3v7ZFpcNeK+
	xn556kbe6f3WjK56wZ1b9eN5XZJ5lqzird/iL2kL9DvO/lNH9NYIoxae+6hQHeLSqVbZ
	7qxZLVotU/VMhhVvORH41bZ9ACXz99xyvtf3nFNOSN8s4ByGvG4b/RuAbWjV/OGfwUCN
	nQo6mFg95aQbn2IeRiSUFZG0thvgeRayAn2Jj75k8pWlc16084J0YsPLfqCxJQseAkD+
	BrB/Q9Jwk8CULkqPQ0Vk9WVQ+nKGRJyhU3pfLpYCclTsZ43y81D5uIiQ+2isOoWb6wS4
	IMAw==
X-Received: by 10.182.19.168 with SMTP id g8mr124663obe.21.1372183601008;
	Tue, 25 Jun 2013 11:06:41 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.182.19.168 with SMTP id g8mr124661obe.21.1372183600918; Tue,
	25 Jun 2013 11:06:40 -0700 (PDT)
Received: by 10.76.163.70 with HTTP; Tue, 25 Jun 2013 11:06:40 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5182B@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5182B@ORSMSX101.amr.corp.intel.com>
Date: Tue, 25 Jun 2013 14:06:40 -0400
Message-ID: <CA+QkY1BKJqnLcbJq786d3LjA6D7gDLLQifccMA4m9m0cKOXj+g@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Gm-Message-State: ALoCoQmffPpGw6rdiHbh4qZkVj17oN4Q4Z+xSLOZ/UfmHV8EbSCf98+AiZvY6DSgOubKcXpp1lN7QZGjdU/KyyIIeHpoSBHYwdNL+o6r9PS8pRWmMZ2i6VNHJ8TL0oRpgz2nMxcpK3CTfT64xfpsGzd/94/+eI/1ThMZLVLIlUpyZHGrHlkq4e0=
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
X-List-Received-Date: Tue, 25 Jun 2013 18:06:44 -0000
Content-Type: multipart/alternative; boundary=001a11c2c4001990d404dffe6489

--001a11c2c4001990d404dffe6489
Content-Type: text/plain; charset=ISO-8859-1

Scott,

   - Distro Layer
   - I'm unclear on what <name> is.  Is that supposed to be <distro>?
       <recipe>?  It probably shouldn't just be <name>, should it?
   - Software Layer
      - Should COPYING.MIT just be COPYING to be more generically
      applicable?
      - conf/<layer_name>.conf should be just layer.conf, right?
   - BSP Layer
      - COPYING.MIT file again.
      - machine/<name>.conf should probably be machine/<machine*>.conf.
       You can probably drop the non-asterisk version, since an
asterisk implies,
      "There might be more stuff, there might not."
      - recipes-bsp/formfactor shouldn't also have another formfactor
      directory, should it?  Or is the "files" directory in 1.4 replaced with
      another formfactor-named directory?  Also, <name> should be
<machine> again.
      - What's everything from recipes-core down?  I can buy recipes-kernel
      being in a bsp, but are any other directories really necessary?

Kind regards,

Jerrod


On Tue, Jun 25, 2013 at 8:35 AM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

> Hi,
>
> This next illustration attempting to dive deeper in the YP Development
> Process takes the remaining left-side input from that figure in the Quick
> Start (metadata, Machine, and Policy).  Note that when the original figure
> was created that appears in the QS, the layer stuff had not yet been
> established.  This figure I am attaching is rough.  I am unsure as to the
> contents of these layers.  Right now it is detailed but with generic names.
>  The idea is that individual layers are preferred to do things such as
> provide software, configure policy, and configure machines.  I am including
> some notes at the bottom of the figure that would not be part of the figure
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
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11c2c4001990d404dffe6489
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style>Scott,</div><ul style><li style>Distro Layer<br=
></li><ul style><li style>I&#39;m unclear on what &lt;name&gt; is. =A0Is th=
at supposed to be &lt;distro&gt;? =A0&lt;recipe&gt;? =A0It probably shouldn=
&#39;t just be &lt;name&gt;, should it?</li>
</ul><li style>Software Layer</li><ul style><li style>Should COPYING.MIT ju=
st be COPYING to be more generically applicable?</li><li style>conf/&lt;lay=
er_name&gt;.conf should be just layer.conf, right?</li></ul><li style>BSP L=
ayer</li>
<ul style><li style>COPYING.MIT file again.</li><li style>machine/&lt;name&=
gt;.conf should probably be machine/&lt;machine*&gt;.conf. =A0You can proba=
bly drop the non-asterisk version, since an asterisk implies, &quot;There m=
ight be more stuff, there might not.&quot;</li>
<li style>recipes-bsp/formfactor shouldn&#39;t also have another formfactor=
 directory, should it? =A0Or is the &quot;files&quot; directory in 1.4 repl=
aced with another formfactor-named directory? =A0Also, &lt;name&gt; should =
be &lt;machine&gt; again.</li>
<li style>What&#39;s everything from recipes-core down? =A0I can buy recipe=
s-kernel being in a bsp, but are any other directories really necessary?</l=
i></ul></ul><div class=3D"gmail_extra" style>Kind regards,</div><div class=
=3D"gmail_extra" style>
<br></div><div class=3D"gmail_extra" style>Jerrod</div><div class=3D"gmail_=
extra"><br><br><div class=3D"gmail_quote">On Tue, Jun 25, 2013 at 8:35 AM, =
Rifenbark, Scott M <span dir=3D"ltr">&lt;<a href=3D"mailto:scott.m.rifenbar=
k@intel.com" target=3D"_blank">scott.m.rifenbark@intel.com</a>&gt;</span> w=
rote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi,<br>
<br>
This next illustration attempting to dive deeper in the YP Development Proc=
ess takes the remaining left-side input from that figure in the Quick Start=
 (metadata, Machine, and Policy). =A0Note that when the original figure was=
 created that appears in the QS, the layer stuff had not yet been establish=
ed. =A0This figure I am attaching is rough. =A0I am unsure as to the conten=
ts of these layers. =A0Right now it is detailed but with generic names. =A0=
The idea is that individual layers are preferred to do things such as provi=
de software, configure policy, and configure machines. =A0I am including so=
me notes at the bottom of the figure that would not be part of the figure b=
ut might help to get across what I am trying to accomplish here.<br>

<br>
Any suggestions and feedback is really appreciated.<br>
<br>
Thanks,<br>
Scott<br>
<br>
Scott Rifenbark<br>
Intel Corporation<br>
Yocto Project Documentation<br>
<a href=3D"tel:503.712.2702" value=3D"+15037122702">503.712.2702</a><br>
<a href=3D"tel:503.341.0418" value=3D"+15033410418">503.341.0418</a>=A0(cel=
l)<br>
<br>
<br>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div>

--001a11c2c4001990d404dffe6489--
