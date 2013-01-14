Return-Path: <peachj@lexmark.com>
Received: from exprod8og111.obsmtp.com (exprod8og111.obsmtp.com [64.18.3.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11B64E00740
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 07:11:00 -0800 (PST)
Received: from mail-ye0-f200.google.com ([209.85.213.200]) (using TLSv1) by
	exprod8ob111.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUPQgA03rnzpmw1SoDJJ/mmTyRwNiI7wB@postini.com;
	Mon, 14 Jan 2013 07:11:00 PST
Received: by mail-ye0-f200.google.com with SMTP id r13so7551866yen.11
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 07:10:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=jPnxq/esdX21vAW/rkD+uCfb8u98U8TNzQofZSmJs6c=;
	b=XfrGQJolTC411xHLSkcBOSucSNEWxV4IR2TYT3DjXkh82vh66mfkQzrcxrt2FJJIe6
	GOWRUF97ckR5tdc/dRtms36EVD6oxVutFdVw5igj6AVEELxdXqBkT4uSUxDJ0G9AQp53
	As6A1+6/icHJVBDa0IuWQBeXxR7/x0X+RfY6OPAhMBWABXMOpFhhIZVbKb8UMEnVbA7P
	JJ6PjR4WqNYf2sgT/bKN072Df+jdOCSZUmoqfX4nQbEy9P9nZwKEGs86DgkSEgfJDRw6
	WUvl33sNA3qfBVcs5uUI2gA1WixRc+/T8dcpqFcYphtVTO8lnRcHki+6yGrLS025MhRn
	W7Kg==
X-Received: by 10.49.74.73 with SMTP id r9mr83125781qev.44.1358176258834;
	Mon, 14 Jan 2013 07:10:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.49.74.73 with SMTP id r9mr83125774qev.44.1358176258729; Mon,
	14 Jan 2013 07:10:58 -0800 (PST)
Received: by 10.49.50.97 with HTTP; Mon, 14 Jan 2013 07:10:58 -0800 (PST)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D23083@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D23083@ORSMSX101.amr.corp.intel.com>
Date: Mon, 14 Jan 2013 10:10:58 -0500
Message-ID: <CA+QkY1BDAof70=YAjtkpwH3ZpV5doDiVBuySZyq9YOiuajTQJQ@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Gm-Message-State: ALoCoQmeJCVuWWP9i/XudT1xw+BCEXItovR53vxnBSx5sNiD5EKVEe5FAO9yRSJVa1uIFx9AhOO7e+RqtzkaI+6BbbJpxciL1H7It5LsQYWsaDoz36+6E+/hiSZPpnPOUpa8KvS2V2f1krCvZpoyeVkFEob07FZwzpFpmYSGSNp8Jcw9x3EajLo=
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: SRCPV description
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
X-List-Received-Date: Mon, 14 Jan 2013 15:11:00 -0000
Content-Type: multipart/alternative; boundary=047d7bdc114671a69004d3410dbb

--047d7bdc114671a69004d3410dbb
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jan 14, 2013 at 9:52 AM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

> Hi,
>
> I need a description of the SRCPV variable for the YP reference glossary.
>  I have been told that it is generated and not assigned and that it is used
> to define PV values that include the source revisions from an RCS.  By
> default it is set to the following in the conf/bitbake.conf file:
>
> SRCPV = "${@bb.fetch2.get_srcrev(d)}"
>
> Can anyone provide more information on this variable?
>
> Thanks,
> Scott
>
>
>
> Scott Rifenbark
> Intel Corporation
> Yocto Project Documentation
> 503.712.2702
> 503.341.0418 (cell)
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

Scott,

Off the top of my head, I know SRCPV is a combination of the VCS type and
revision used in the actual build. Most interestingly, SRCPV will always
contain the real revision used in the build, even if ${AUTOREV} is
specified as the SRCREV for a given package. Note that if a package does
not include SRCPV somewhere within its recipe, I believe setting SRCREV to
${AUTOREV} will have no effect, as ${AUTOREV} by itself simply resolves to
the string "AUTOINC", which does not permute the hash of the recipe.

Note that I'm not really a Yocto expert nor am I sitting with the code in
front of me right now, so someone can jump in if I missed something or got
a detail incorrect.  I don't remember the exact format of the string, but I
want to say its a combination of the VCS name, a Yocto-internal VCS
identification number (just like 1 or 2, not some huge int), and the
revision (be it a hash it git or an integer in SVN or whatever else is used
by a supported VCS).

Kind regards,

Jerrod

--047d7bdc114671a69004d3410dbb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style>On Mon, Jan 14, 2013 at 9:52 AM, Rifenbark, Sco=
tt M <span dir=3D"ltr">&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com" t=
arget=3D"_blank">scott.m.rifenbark@intel.com</a>&gt;</span> wrote:<br></div=
><div class=3D"gmail_extra">
<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204=
);border-left-style:solid;padding-left:1ex">Hi,<br>
<br>
I need a description of the SRCPV variable for the YP reference glossary. =
=A0I have been told that it is generated and not assigned and that it is us=
ed to define PV values that include the source revisions from an RCS. =A0By=
 default it is set to the following in the conf/bitbake.conf file:<br>

<br>
SRCPV =3D &quot;${@bb.fetch2.get_srcrev(d)}&quot;<br>
<br>
Can anyone provide more information on this variable?<br>
<br>
Thanks,<br>
Scott<br>
<br>
<br>
<br>
Scott Rifenbark<br>
Intel Corporation<br>
Yocto Project Documentation<br>
<a href=3D"tel:503.712.2702" value=3D"+15037122702">503.712.2702</a><br>
<a href=3D"tel:503.341.0418" value=3D"+15033410418">503.341.0418</a>=A0(cel=
l)<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><span class=3D""></span><=
br>
</blockquote></div><br></div><div class=3D"gmail_extra"><div>Scott,</div><d=
iv><br></div>Off the top of my head, I know SRCPV is a combination of the V=
CS type and revision used in the actual build. Most interestingly, SRCPV wi=
ll always contain the real revision used in the build, even if ${AUTOREV} i=
s specified as the SRCREV for a given package. Note that if a package does =
not include SRCPV somewhere within its recipe, I believe setting SRCREV to =
${AUTOREV} will have no effect, as ${AUTOREV} by itself simply resolves to =
the string &quot;AUTOINC&quot;, which does not permute the hash of the reci=
pe.</div>
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra" style>Note =
that I&#39;m not really a Yocto expert nor am I sitting with the code in fr=
ont of me right now, so someone can jump in if I missed something or got a =
detail incorrect. =A0I don&#39;t remember the exact format of the string, b=
ut I want to say its a combination of the VCS name, a Yocto-internal VCS id=
entification number (just like 1 or 2, not some huge int), and the revision=
 (be it a hash it git or an integer in SVN or whatever else is used by a su=
pported VCS).</div>
<div class=3D"gmail_extra" style><br></div><div class=3D"gmail_extra" style=
>Kind regards,</div><div class=3D"gmail_extra" style><br></div><div class=
=3D"gmail_extra" style>Jerrod</div></div>

--047d7bdc114671a69004d3410dbb--
