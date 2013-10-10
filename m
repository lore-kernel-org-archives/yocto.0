Return-Path: <seth.boll@gmail.com>
Received: from mail-we0-f182.google.com (mail-we0-f182.google.com
	[74.125.82.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B89FCE015ED
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 07:36:17 -0700 (PDT)
Received: by mail-we0-f182.google.com with SMTP id t61so2690336wes.13
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 07:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=+OgDCiqhaZs7OOMZDj0yrxVdkMVu2QQgLihNt5YOpps=;
	b=QrFacjTJHhPW2yy4mmeA0KLpupQ35yd4YjWuzQmGz0XZMKP0ogyEeeyDLa5MYmzc4E
	Hz+UyChSFAvyCoDmpPCeCnAKXI+rR/9dhaHhDnun14/8U7/uNN+F0r8/hQxQ9IYf2ZMR
	9SmaZl6TlNixFAZfJKAiHL7C9zTorgtUkl7ABB+hnMGsHe8rd8NqGdSB6ZYmbr+02FLT
	+rnaO2cBxxUl9na73rT+ChVt9eCek9IKCvASCavG+PGVLJSNScQS2iiUGiAmhU/sqVgZ
	jDKAHtHqFIC4f5FBjX8krMloXp52HT5CeiQvJp7Xt0Apr9scJqH1Qn4nixbXZ4uWXfgt
	yFTA==
MIME-Version: 1.0
X-Received: by 10.180.84.70 with SMTP id w6mr8250030wiy.2.1381415775794; Thu,
	10 Oct 2013 07:36:15 -0700 (PDT)
Received: by 10.216.59.133 with HTTP; Thu, 10 Oct 2013 07:36:15 -0700 (PDT)
In-Reply-To: <2034055.AmVRsnPTrY@helios>
References: <5255F1CF.8020203@gmail.com>
	<2034055.AmVRsnPTrY@helios>
Date: Thu, 10 Oct 2013 09:36:15 -0500
Message-ID: <CA+JN8xPBG_V4MMGxnQv49FC8qC3WJNwgOFKKvkqE73NnnFAWXA@mail.gmail.com>
From: Seth Bollinger <seth.boll@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recipes that update a shared file
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
X-List-Received-Date: Thu, 10 Oct 2013 14:36:18 -0000
Content-Type: multipart/alternative; boundary=f46d044402689a7d9704e863ecd5

--f46d044402689a7d9704e863ecd5
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Oct 10, 2013 at 4:31 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> That's really the recommended way to do it. If the software being
> configured
> supports it, another way is to set it up to read all configuration files
> from a
> directory and then you can simply install a new file into that directory
> from
> the other recipe (e.g. Apache is usually configured to read all
> configuration
> files in /etc/httpd/conf.d or similar).
>

Yes, I would have liked to solve the problem that way, but unfortunately
the software doesn't support it, and we don't want to make changes
currently. :)

I'm having a lot of trouble getting pkg_postinst() to work.  From what I've
read, it should happen during rootfs generation, but I'm not see the file
in the rootfs.

I found an example in the xfce4-session_4.10.0.bb recipe.  It looks like
/etc/hosts is installed by netbase, so this is very similar to what my
recipe is doing.
# protect from frightening message that xfce might not work correctly
pkg_postinst_${PN} () {
    echo 127.0.0.1    ${MACHINE} >> /etc/hosts
}

I've tried this in my recipe, and the file that I expect to be present in
the rootfs is not there...not sure what I'm doing wrong.
pkg_postinst_${PN} () {
    echo test >> /etc/inittest2
}

Also, the documentation states that this mechanism can be used to do things
on first boot.  Do I need to add code to make sure that this doesn't happen
on first boot?

Thanks!

Seth

--f46d044402689a7d9704e863ecd5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Thu, Oct 10, 2013 at 4:31 AM, Paul Eggleton <span dir=
=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_bl=
ank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br><div class=3D"g=
mail_extra">
<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204=
);border-left-style:solid;padding-left:1ex">
That&#39;s really the recommended way to do it. If the software being confi=
gured<br>
supports it, another way is to set it up to read all configuration files fr=
om a<br>
directory and then you can simply install a new file into that directory fr=
om<br>
the other recipe (e.g. Apache is usually configured to read all configurati=
on<br>
files in /etc/httpd/conf.d or similar).<br></blockquote><div><br></div><div=
>Yes, I would have liked to solve the problem that way, but unfortunately t=
he software doesn&#39;t support it, and we don&#39;t want to make changes c=
urrently. :)</div>
<div><br></div><div>I&#39;m having a lot of trouble getting pkg_postinst() =
to work. =A0From what I&#39;ve read, it should happen during rootfs generat=
ion, but I&#39;m not see the file in the rootfs.</div><div><br></div><div>
I found an example in the=A0<a href=3D"http://xfce4-session_4.10.0.bb">xfce=
4-session_4.10.0.bb</a> recipe. =A0It looks like /etc/hosts is installed by=
 netbase, so this is very similar to what my recipe is doing.</div><div><di=
v>
# protect from frightening message that xfce might not work correctly</div>=
<div>pkg_postinst_${PN} () {</div><div>=A0 =A0 echo 127.0.0.1 =A0 =A0${MACH=
INE} &gt;&gt; /etc/hosts</div><div>}</div></div><div><br></div><div>I&#39;v=
e tried this in my recipe, and the file that I expect to be present in the =
rootfs is not there...not sure what I&#39;m doing wrong.<br>
</div><div><div>pkg_postinst_${PN} () {</div><div>=A0 =A0 echo test &gt;&gt=
; /etc/inittest2<br></div><div>}</div></div><div><br></div><div>Also, the d=
ocumentation states that this mechanism can be used to do things on first b=
oot. =A0Do I need to add code to make sure that this doesn&#39;t happen on =
first boot?</div>
<div><br></div><div>Thanks!</div><div><br></div><div>Seth</div><div><br></d=
iv></div></div></div>

--f46d044402689a7d9704e863ecd5--
