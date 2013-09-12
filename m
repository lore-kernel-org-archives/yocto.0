Return-Path: <ashish.dalela@gmail.com>
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF171E01420
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 07:02:00 -0700 (PDT)
Received: by mail-lb0-f182.google.com with SMTP id c11so947902lbj.27
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 07:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=AMuUN3yKgX1jBWB/rh2g0d4ZuzvaW647jlaZpnQfSuA=;
	b=Nd1uFs7ou584uSmdLuair0P+XzZVkZfdzwbXUMGl8/YWaHUl1JWdn2jXdXn1yr/W+E
	9El/mzWdNT+mIfGdIP4aQn7ji++5Bz/U+jkTXeaFE7zbRfE+Mg3anezTHIruzbZ+PxQD
	24+ozo3QeYkUF6Slaem/3Um6Fiq4zdl8G9iwzDvkTYp2mL9LSxVDc3iEAK42NvoNvGfe
	Rppa+gS5G+UabfirAZDkYNYMIKoUv5KmxtL6GZiaGYvLu5ITgiDXzI1EMoJEdhg7jOYF
	OaxaiQREUVg+VQt2GmzxCQfkBxMkOF44/8V4XOtJm8fUz9fB+Jwr4KtW/9AcKvCxWcLX
	ir6g==
MIME-Version: 1.0
X-Received: by 10.152.7.100 with SMTP id i4mr1637717laa.35.1378994519379; Thu,
	12 Sep 2013 07:01:59 -0700 (PDT)
Received: by 10.112.11.195 with HTTP; Thu, 12 Sep 2013 07:01:59 -0700 (PDT)
In-Reply-To: <CAP71WjwqPUS3JTZAswd6ULWXX8CTh4_F1X_MLjJO8tAw47mOYg@mail.gmail.com>
References: <CABhkJRdQQ2HaXCrah=544uAn6Ys=gspTdmuSOa2VHv_gJASmKA@mail.gmail.com>
	<CABhkJRcxDY13w5fWcSVg1Bv6cD-=h1rUTm557JqLB8U3FD=NCw@mail.gmail.com>
	<CAP71WjwqPUS3JTZAswd6ULWXX8CTh4_F1X_MLjJO8tAw47mOYg@mail.gmail.com>
Date: Thu, 12 Sep 2013 19:31:59 +0530
Message-ID: <CABhkJRc+Ae1oYAP8821rYU8z0d5C9cHpoXVXL3vXdVnzSbx2jA@mail.gmail.com>
From: Ashish Dalela <ashish.dalela@gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Error while building a custom image
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
X-List-Received-Date: Thu, 12 Sep 2013 14:02:01 -0000
Content-Type: multipart/alternative; boundary=001a11c27d827994ac04e6302e0a

--001a11c27d827994ac04e6302e0a
Content-Type: text/plain; charset=ISO-8859-1

Yes, bitbake tpmc is successful.

Also, I added my layer to the BBLAYERS in the build/conf/bblayers.conf file.

Thanks for responding

-Ashish



On Thu, Sep 12, 2013 at 7:27 PM, Nicolas Dechesne <
nicolas.dechesne@linaro.org> wrote:

>
> On Thu, Sep 12, 2013 at 3:52 PM, Ashish Dalela <ashish.dalela@gmail.com>wrote:
>
>> I tried a small change. I removed the packagegroup entry and added the
>> following to meta/recipes-extended/images/core-image-basic.bb
>>
>> IMAGE_INSTALL += "tpmc"
>>
>> Now, when I do a bitbake core-image-basic, I get this error:
>>
>> *Error: tpmc not found in the base feeds (qemux86 i586 i486 i386 x86
>> noarch any all).*
>> *
>> *
>> Can someone please help? It's probably something quite simple but I'm not
>> getting it.
>>
>
> did you add your layer to BBLAYERS in conf/bblayer.conf file?
>
> does "bitbake tpmc" actually build your recipe?
>
>
>

--001a11c27d827994ac04e6302e0a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, bitbake tpmc is successful.<div><br></div><div>Also, =
I added my layer to the BBLAYERS in the build/conf/bblayers.conf file.</div=
><div><br></div><div>Thanks for responding</div><div><br></div><div>-Ashish=
</div>
<div><br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Thu, Sep 12, 2013 at 7:27 PM, Nicolas Dechesne <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_blank">nicol=
as.dechesne@linaro.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote"><div class=3D"im">On Thu, Sep 12, 2013 at 3:=
52 PM, Ashish Dalela <span dir=3D"ltr">&lt;<a href=3D"mailto:ashish.dalela@=
gmail.com" target=3D"_blank">ashish.dalela@gmail.com</a>&gt;</span> wrote:<=
br>


</div><div class=3D"im"><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>I tried a small=
 change. I removed the packagegroup entry and added the following to meta/r=
ecipes-extended/images/<a href=3D"http://core-image-basic.bb" target=3D"_bl=
ank">core-image-basic.bb</a>=A0</div>


<div><br></div><div>
<div>IMAGE_INSTALL +=3D &quot;tpmc&quot;</div></div><div><br></div><div>Now=
, when I do a bitbake core-image-basic, I get this error:</div><div><br></d=
iv><div><div><b>Error: tpmc not found in the base feeds (qemux86 i586 i486 =
i386 x86 noarch any all).</b></div>



</div><div><b><br></b></div><div>Can someone please help? It&#39;s probably=
 something quite simple but I&#39;m not getting it.</div><div></div></block=
quote></div></div><br>did you add your layer to BBLAYERS in conf/bblayer.co=
nf file?</div>


<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">does &quot;=
bitbake tpmc&quot; actually build your recipe?</div><div class=3D"gmail_ext=
ra"><br></div><div class=3D"gmail_extra"><br></div></div>
</blockquote></div><br></div>

--001a11c27d827994ac04e6302e0a--
