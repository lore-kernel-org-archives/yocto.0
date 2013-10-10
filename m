Return-Path: <seth.boll@gmail.com>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FC9FE015ED
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 08:02:08 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id c11so2674374wgh.30
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 08:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=VPp26lOcSZWTdqPlrle6mer0e+LAqZ6Tk6rBnAxPYY4=;
	b=OOQQRYJ2sA/4sU/4X+tghQ1Pyld3tiErCwGT3+mszfzJWhhis+nT8STyxFCwojVZKV
	ru5UP5+fcwF9coM7r8QZDh4LkIJa3NDfKkurr8qqE01ImIf3HcSeZqAbulipmSTRkfKl
	UGygO2M0r/3B1353LiBO0OfhZ+6zj01K/D5/3b801200P8nqwbsXPe4Zx1MqgDJ608Wg
	f1IdUzTL54DDWQ5oJALqGbx0N+ym63AHIjnjzruSJu53RI9QcEfn8tTxuHpQl3Y4pB5O
	oIhIsrHhfzZEB1n0BCKaseAquE8ukdWSJAo0Mt/QrSS9uPDFp1l4oC4A/qXCJJosb4Ul
	VZUA==
MIME-Version: 1.0
X-Received: by 10.180.160.165 with SMTP id xl5mr8149057wib.48.1381417327872;
	Thu, 10 Oct 2013 08:02:07 -0700 (PDT)
Received: by 10.216.59.133 with HTTP; Thu, 10 Oct 2013 08:02:07 -0700 (PDT)
In-Reply-To: <CAJTo0LaNxxcuLPtwoh-ryLObhp4sVV4ESj_VnUhx4-Q=y=ciRw@mail.gmail.com>
References: <5255F1CF.8020203@gmail.com> <2034055.AmVRsnPTrY@helios>
	<CA+JN8xPBG_V4MMGxnQv49FC8qC3WJNwgOFKKvkqE73NnnFAWXA@mail.gmail.com>
	<CAJTo0LaNxxcuLPtwoh-ryLObhp4sVV4ESj_VnUhx4-Q=y=ciRw@mail.gmail.com>
Date: Thu, 10 Oct 2013 10:02:07 -0500
Message-ID: <CA+JN8xP7dhToPUhpor-C3LJOVY9ZyYP5giOTJjwUMfKNSfOkrQ@mail.gmail.com>
From: Seth Bollinger <seth.boll@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 10 Oct 2013 15:02:11 -0000
Content-Type: multipart/alternative; boundary=047d7b62509c1d75f104e8644991

--047d7b62509c1d75f104e8644991
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Oct 10, 2013 at 9:40 AM, Burton, Ross <ross.burton@intel.com> wrote:

> You need to use $D so that you're not attempting to write to the *host's*
> /etc:
>
> echo test >> $D/etc/inittest2
>
> In a postinst $D may be set, and if it is then the postinst is being
> ran on the host at rootfs time, and points to where the rootfs is
> being constructed.
>

Ok, I changed to as follows:
pkg_postinst_${PN} () {
    echo "testtest" >> ${D}/etc/inittest
}

After that I do a find and the file is only populated in the recipe's image
directory, not the rootfs.

$ find . -iname inittest
./tmp/work/armv5te-dbl-linux-gnueabi/widget/1.0-r0/image/etc/inittest

Thanks!

Seth

--047d7b62509c1d75f104e8644991
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Thu, Oct 10, 2013 at 9:40 AM, Burton, Ross <span dir=3D=
"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.b=
urton@intel.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div cl=
ass=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
You need to use $D so that you&#39;re not attempting to write to the *host&=
#39;s* /etc:<br>
<br>
echo test &gt;&gt; $D/etc/inittest2<br>
<br>
In a postinst $D may be set, and if it is then the postinst is being<br>
ran on the host at rootfs time, and points to where the rootfs is<br>
being constructed.<br></blockquote><div><br></div><div>Ok, I changed to as =
follows:</div><div><div>pkg_postinst_${PN} () {</div><div>=A0 =A0 echo &quo=
t;testtest&quot; &gt;&gt; ${D}/etc/inittest</div><div>}</div></div><div><br=
>
</div><div>After that I do a find and the file is only populated in the rec=
ipe&#39;s image directory, not the rootfs.</div><div><br></div><div><div>$ =
find . -iname inittest</div><div>./tmp/work/armv5te-dbl-linux-gnueabi/widge=
t/1.0-r0/image/etc/inittest</div>
</div><div><br></div><div>Thanks!</div><div><br></div><div>Seth</div></div>=
<br></div></div>

--047d7b62509c1d75f104e8644991--
