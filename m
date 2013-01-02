Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 760BCE004D1
	for <yocto@yoctoproject.org>; Tue,  1 Jan 2013 19:01:37 -0800 (PST)
Received: by mail-ee0-f49.google.com with SMTP id c4so6579806eek.22
	for <yocto@yoctoproject.org>; Tue, 01 Jan 2013 19:01:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=Dbmq6zZ8aztZL83wYvdYI1Ljfow8bq/ak7aN7VH6b8A=;
	b=ag9fDIAsvPTYLmS8xF97xSpo0gOGi/7ut+L4xnafs31WvNzH02Q9dYJlCip10LGqw4
	y7gPqHGyZr93DENBSPjsPiz8BhEGqW54jsAWN9lJg3VeKTMI5JcBw19BslDOcKBapWrv
	Hgh/1OBAn9JAJ3697y+3CZKL6rXNS42mnTuDvPb+kznUH/z+/7l33bHLDOQq4nkvjtek
	Le9ePJ7lYcLgVSTcTqpwgahGfQCqNclcwCc2bmaA4gzKvCFONC6FtPR9FFHnq6d2mPNQ
	3+QeX9YiXKlreUJT0j+fyBiVBujp9o0iG3khbCat/OzzRM52UTrWj9Y+zSkzDQqAmfFD
	b01w==
MIME-Version: 1.0
Received: by 10.14.216.70 with SMTP id f46mr121955190eep.12.1357095695715;
	Tue, 01 Jan 2013 19:01:35 -0800 (PST)
Received: by 10.223.144.149 with HTTP; Tue, 1 Jan 2013 19:01:35 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1212301107480.15769@oneiric>
References: <alpine.DEB.2.02.1212300427410.11574@oneiric>
	<CAGfZjq5hbEs3LVkN0JYbUzGXrJGyTTtoqvSLx7a24nWj5mft9w@mail.gmail.com>
	<alpine.DEB.2.02.1212301107480.15769@oneiric>
Date: Tue, 1 Jan 2013 19:01:35 -0800
Message-ID: <CA+gsK-qxC6rmxyk7bnfBEd+o98D2_vpXz+J+s35fuTyz24VD+w@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQl8USMVQkFBTs/QKP8qyIXVpDfPyDhR4Agq1qe9bm7BuJrPinLza4rFBP/TmoFnzB2pIqF8
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: dev manual is confusing as to whether a layer *must* be named "meta-..."
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
X-List-Received-Date: Wed, 02 Jan 2013 03:01:37 -0000
Content-Type: multipart/alternative; boundary=047d7b603c1ede8b5804d24576e6

--047d7b603c1ede8b5804d24576e6
Content-Type: text/plain; charset=ISO-8859-1

The meta- prefix for layers is purely customary convention and has been
adopted as best practice. There is no technical reason for it. The only
place where the name of a layer directory is referenced is in
bblayers.conf. Technically, you can give your layer any name you want to as
long as it is compliant with directory names of the filesystem.

:rjs


On Sun, Dec 30, 2012 at 8:10 AM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

> On Sun, 30 Dec 2012, Bill Traynor wrote:
>
> >
> >
> >
> > On Sun, Dec 30, 2012 at 4:29 AM, Robert P. J. Day <rpjday@crashcourse.ca>
> wrote:
> >
> >         section 5.1.1 of dev manual:
> >
> >       "Folders that are layers begin with the string meta."
> >
> >         section 5.1.2, immediately afterwards:
> >
> >       "Traditionally, prepend the name of the folder with the string
> meta."
> >
> >         those two statements are somewhat contradictory.
> >
> >
> > The first statement is in a paragraph describing the identification
> > of a layer within the Source directory, i.e. its name begins with
> > "meta".
> >
> > The second statement is describing the naming of the folder that
> > will contain a new layer, i.e. pre-pend the name with "meta".
> >
> > I'm not sure I see the contradiction here.  Can you explain?
>
>   the (as i see it) inconsistency is that it's not clear whether a
> layer name *must* begin with the prefix "meta-".  if one says that
> something happens "traditionally", that suggests it's not mandatory,
> simply a matter of custom.
>
>   i'd prefer that that section was explicit.  you can never go wrong
> being explicit. :-)
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
-- 
*Rudolf J. Streif*
Director of Embedded Solutions
The Linux Foundation

rudolf.streif@linux.com
Phone: +1.619.631.5383
Skype: rudolfstreif
PGP: RSA 2048/2048 D6E7D28B

Linux Foundation Events Schedule:  events.linuxfoundation.org
Linux Foundation Training Schedule: training.linuxfoundation.org

--047d7b603c1ede8b5804d24576e6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

The meta- prefix for layers is purely customary convention and has been ado=
pted as best practice. There is no technical reason for it. The only place =
where the name of a layer directory is referenced is in bblayers.conf. Tech=
nically, you can give your layer any name you want to as long as it is comp=
liant with directory names of the filesystem.<div>
<br></div><div>:rjs</div><div class=3D"gmail_extra"><br><br><div class=3D"g=
mail_quote">On Sun, Dec 30, 2012 at 8:10 AM, Robert P. J. Day <span dir=3D"=
ltr">&lt;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@=
crashcourse.ca</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Sun, 30 Dec 2012, Bill =
Traynor wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Sun, Dec 30, 2012 at 4:29 AM, Robert P. J. Day &lt;<a href=3D"mailt=
o:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a>&gt; wrote:<br>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 section 5.1.1 of dev manual:<br>
&gt;<br>
&gt; =A0 =A0 =A0 &quot;Folders that are layers begin with the string meta.&=
quot;<br>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 section 5.1.2, immediately afterwards:<br>
&gt;<br>
&gt; =A0 =A0 =A0 &quot;Traditionally, prepend the name of the folder with t=
he string meta.&quot;<br>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 those two statements are somewhat contradictory.<br>
&gt;<br>
&gt;<br>
&gt; The first statement is in a paragraph describing the identification<br=
>
&gt; of a layer within the Source directory, i.e. its name begins with<br>
&gt; &quot;meta&quot;.<br>
&gt;<br>
&gt; The second statement is describing the naming of the folder that<br>
&gt; will contain a new layer, i.e. pre-pend the name with &quot;meta&quot;=
.<br>
&gt;<br>
&gt; I&#39;m not sure I see the contradiction here. =A0Can you explain?<br>
<br>
</div>=A0 the (as i see it) inconsistency is that it&#39;s not clear whethe=
r a<br>
layer name *must* begin with the prefix &quot;meta-&quot;. =A0if one says t=
hat<br>
something happens &quot;traditionally&quot;, that suggests it&#39;s not man=
datory,<br>
simply a matter of custom.<br>
<br>
=A0 i&#39;d prefer that that section was explicit. =A0you can never go wron=
g<br>
being explicit. :-)<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"http://crashcour=
se.ca" target=3D"_blank">http://crashcourse.ca</a><br>
<br>
Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 <a href=3D"http://twitter.com/rpjday" target=3D"_blank">http://=
twitter.com/rpjday</a><br>
LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a hr=
ef=3D"http://ca.linkedin.com/in/rpjday" target=3D"_blank">http://ca.linkedi=
n.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div></d=
iv><br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>--=A0<br=
><font face=3D"arial, helvetica, sans-serif"><b>Rudolf J. Streif</b></font>=
<div><font face=3D"arial, helvetica, sans-serif">Director of Embedded Solut=
ions</font></div>
<div><font face=3D"arial, helvetica, sans-serif">The Linux Foundation</font=
></div><div><font face=3D"arial, helvetica, sans-serif"><br></font></div><d=
iv><a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank"><font face=
=3D"arial, helvetica, sans-serif">rudolf.streif@linux.com</font></a></div>
<div><font face=3D"arial, helvetica, sans-serif">Phone: +1.619.631.5383</fo=
nt></div><div><font face=3D"arial, helvetica, sans-serif">Skype: rudolfstre=
if</font></div><div><font face=3D"arial, helvetica, sans-serif">PGP: RSA 20=
48/2048 D6E7D28B</font></div>
<div><font face=3D"garamond, serif"><br></font></div><div><font face=3D"gar=
amond, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102=
);font-family:arial,sans-serif;font-size:13px"><span style=3D"border-collap=
se:collapse">Linux Foundation Events Schedule: =A0<a href=3D"http://events.=
linuxfoundation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">eve=
nts.linuxfoundation.org</a><br>
Linux Foundation Training Schedule:=A0<a href=3D"http://training.linuxfound=
ation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">training.linu=
xfoundation.org</a></span><br></span></font></div><div><font face=3D"garamo=
nd, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102);f=
ont-family:arial,sans-serif;font-size:13px"><br>
</span></font></div>
</div>

--047d7b603c1ede8b5804d24576e6--
