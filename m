Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web12.10113.1598955932990183061
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Sep 2020 03:25:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=ONmKGu3Y;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.170, mailfrom: jester@theyoctojester.info)
Received: by mail-lj1-f170.google.com with SMTP id k25so835976ljg.9
        for <yocto@lists.yoctoproject.org>; Tue, 01 Sep 2020 03:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QZY3Cwc5lEdh6YhvS5kyALx8WSHvZRO3wQsvEDme4Ac=;
        b=ONmKGu3YI9AmY2HLS16XyhE1o/AzPoQx6VQEnd4K/EODV2MD1tFr8cM6CypZetRCzN
         Lu/PRak1axsmwkc3QT79+UIxe6+gpvCYJOKp8hMj20oL2ocXmU8egZa2QCViwZcYLIlO
         3MoYVtgGidp4GkeM6yWCdFk9boro/JpjSeuIMeT4CwkeCV+i5PVM24UL43y6zcM+g1rA
         LlnK5FQfIzi6anSGX2VVlsOthZv7PtSYAqhyztScF3NwpLTM54L5D8tASotFIAZ55yEy
         5a3ptjJrW1HxqEZOiJEEetr3tYTdAj2TWPmQwkfJAp3VopJ5YhrQ75M7FrOEQeUD8DEe
         7+xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QZY3Cwc5lEdh6YhvS5kyALx8WSHvZRO3wQsvEDme4Ac=;
        b=SNnJRGufjO28HoaLrUkuR/Z4CqXX8MsOsKNillYLZ/DXy6eOINVmYBwksQpHnlioOr
         S9vBRzLFuKFtSxAOk+vEsT/RyzpDv4LbSSrEkViZTftDhOKcGkbEnKaW359ojWJkuTwj
         +wAwev14eJ2MwznvNDhV6p3NZ/xDeIMXXagu7aXtA9mNi2DVhCncVrwEIignYuaHuEMe
         EYi8HdkAkyw2ymjISC5bpuInXXWpCKWiHEpin4b3UAozXITBhMbnASJOdki8PVtuxMjx
         QW8PLrV/mSgFV5mOBVLAN+p+G+gCxIOEhr2stXZjrxBIeoCupSRPE7NBvNMmmTvIEE6B
         WPpg==
X-Gm-Message-State: AOAM532cAZgh+Ho81vjxKVAqW1V5taGWQTO0WuGiWlnzikhQIxNKBi0D
	2a0kavRVavEzC1GQIXDxI/GPKhW6hoyOV9J8BgnCkg==
X-Google-Smtp-Source: ABdhPJw8Xh7mFy0n3TlJMaTzSWxGSytJu8gqZnMEKNk3kKA56MTqFNiGXgsgDlsI9jrj7/l0B7zswy0VPflgRVAO43A=
X-Received: by 2002:a2e:9f0a:: with SMTP id u10mr234595ljk.140.1598955930698;
 Tue, 01 Sep 2020 03:25:30 -0700 (PDT)
MIME-Version: 1.0
References: <8B1s.1598955769274779937.Mx7T@lists.yoctoproject.org>
In-Reply-To: <8B1s.1598955769274779937.Mx7T@lists.yoctoproject.org>
From: "Josef Holzmayr-Khosh Amoz" <jester@theyoctojester.info>
Date: Tue, 1 Sep 2020 12:25:04 +0200
Message-ID: <CAEt6Nwq30AiBo6+u39HLubK511nLnkGg6DMoj2kQLVAzpWjkHw@mail.gmail.com>
Subject: Re: [yocto] Information about Yocto Dunfell components version #dunfell
To: Yocto_user <avinashyadav94it@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000042e67905ae3df052"

--00000000000042e67905ae3df052
Content-Type: text/plain; charset="UTF-8"

Insert the package names into
http://layers.openembedded.org/layerindex/branch/dunfell/recipes and see
for yourself :)

Greetz

Am Di., 1. Sept. 2020 um 12:22 Uhr schrieb Yocto_user <
avinashyadav94it@gmail.com>:

> Hi All,
>
> I read the Dunfell release notes but couldn't find the version detail of
> following components:
> bzip2
> cairo
> faad2
> fontconfig
> freetype
> gdkpixbuf
> libav
> libffi
> libjpeg
> libogg
> libpng
> libtiff
> libvorbis
> libxcursor
> openexr
> openssl
> pango
> pixman
> stb-image
> swscale
> theora
> x264
> zlib
> Please give me the version detail of these components,  we are planning to
> use dunfell but before that we needed the version detail of all these
> components in Yocto. 
>

--00000000000042e67905ae3df052
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Insert the package names into <a href=3D"http://layer=
s.openembedded.org/layerindex/branch/dunfell/recipes">http://layers.openemb=
edded.org/layerindex/branch/dunfell/recipes</a> and see for yourself :)</di=
v><div><br></div><div>Greetz<br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Am Di., 1. Sept. 2020 um 12:22=C2=A0U=
hr schrieb Yocto_user &lt;<a href=3D"mailto:avinashyadav94it@gmail.com">avi=
nashyadav94it@gmail.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">Hi All,<br><br>I read the Dunfell release notes but couldn=
&#39;t find the version detail of following components:<br>
<table style=3D"width:70pt;height:84px" width=3D"93" cellspacing=3D"0" cel=
lpadding=3D"0" border=3D"0"><colgroup><col style=3D"width:70pt" width=3D"93=
"> </colgroup>
<tbody>
<tr style=3D"height:14px">
<td style=3D"height:14px;width:92.6667px;font-size:11pt;color:black;font-f=
amily:Calibri,sans-serif;border:0.5pt solid rgb(165,165,165);background-ima=
ge:initial;background-position:initial;background-size:initial;background-r=
epeat:initial;background-origin:initial;background-clip:initial" height=3D"=
19">bzip2</td>
</tr>
<tr style=3D"height:14px">
<td style=3D"height:14px;font-size:11pt;color:black;font-family:Calibri,sa=
ns-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;backg=
round-position:initial;background-size:initial;background-repeat:initial;ba=
ckground-origin:initial;background-clip:initial;width:92.6667px" height=3D"=
19">cairo</td>
</tr>
<tr style=3D"height:14px">
<td style=3D"height:14px;font-size:11pt;color:black;font-family:Calibri,sa=
ns-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;backg=
round-position:initial;background-size:initial;background-repeat:initial;ba=
ckground-origin:initial;background-clip:initial;width:92.6667px" height=3D"=
19">faad2</td>
</tr>
<tr style=3D"height:14px">
<td style=3D"height:14px;font-size:11pt;color:black;font-family:Calibri,sa=
ns-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;backg=
round-position:initial;background-size:initial;background-repeat:initial;ba=
ckground-origin:initial;background-clip:initial;width:92.6667px" height=3D"=
19">fontconfig</td>
</tr>
<tr style=3D"height:14px">
<td style=3D"height:14px;font-size:11pt;color:black;font-family:Calibri,sa=
ns-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;backg=
round-position:initial;background-size:initial;background-repeat:initial;ba=
ckground-origin:initial;background-clip:initial;width:92.6667px" height=3D"=
19">freetype</td>
</tr>
<tr style=3D"height:14px">
<td style=3D"height:14px;font-size:11pt;color:black;font-family:Calibri,sa=
ns-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;backg=
round-position:initial;background-size:initial;background-repeat:initial;ba=
ckground-origin:initial;background-clip:initial;width:92.6667px" height=3D"=
19">gdkpixbuf</td>
</tr>
</tbody>
</table>
<table style=3D"width:70pt" width=3D"93" cellspacing=3D"0" cellpadding=3D"=
0" border=3D"0"><colgroup><col style=3D"width:70pt" width=3D"93"> </colgrou=
p>
<tbody>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;width:70pt;font-size:11pt;color:black;font-fami=
ly:Calibri,sans-serif;border:0.5pt solid rgb(165,165,165);background-image:=
initial;background-position:initial;background-size:initial;background-repe=
at:initial;background-origin:initial;background-clip:initial" width=3D"93" =
height=3D"19">libav</td>
</tr>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;font-size:11pt;color:black;font-family:Calibri,=
sans-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;bac=
kground-position:initial;background-size:initial;background-repeat:initial;=
background-origin:initial;background-clip:initial" height=3D"19">libffi</td=
>
</tr>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;font-size:11pt;color:black;font-family:Calibri,=
sans-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;bac=
kground-position:initial;background-size:initial;background-repeat:initial;=
background-origin:initial;background-clip:initial" height=3D"19">libjpeg</t=
d>
</tr>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;font-size:11pt;color:black;font-family:Calibri,=
sans-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;bac=
kground-position:initial;background-size:initial;background-repeat:initial;=
background-origin:initial;background-clip:initial" height=3D"19">libogg</td=
>
</tr>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;font-size:11pt;color:black;font-family:Calibri,=
sans-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;bac=
kground-position:initial;background-size:initial;background-repeat:initial;=
background-origin:initial;background-clip:initial" height=3D"19">libpng</td=
>
</tr>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;font-size:11pt;color:black;font-family:Calibri,=
sans-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;bac=
kground-position:initial;background-size:initial;background-repeat:initial;=
background-origin:initial;background-clip:initial" height=3D"19">libtiff</t=
d>
</tr>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;font-size:11pt;color:black;font-family:Calibri,=
sans-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;bac=
kground-position:initial;background-size:initial;background-repeat:initial;=
background-origin:initial;background-clip:initial" height=3D"19">libvorbis<=
/td>
</tr>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;font-size:11pt;color:black;font-family:Calibri,=
sans-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;bac=
kground-position:initial;background-size:initial;background-repeat:initial;=
background-origin:initial;background-clip:initial" height=3D"19">libxcursor=
</td>
</tr>
</tbody>
</table>
<table style=3D"width:70pt" width=3D"93" cellspacing=3D"0" cellpadding=3D"=
0" border=3D"0"><colgroup><col style=3D"width:70pt" width=3D"93"> </colgrou=
p>
<tbody>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;width:70pt;font-size:11pt;color:black;font-fami=
ly:Calibri,sans-serif;border:0.5pt solid rgb(165,165,165);background-image:=
initial;background-position:initial;background-size:initial;background-repe=
at:initial;background-origin:initial;background-clip:initial" width=3D"93" =
height=3D"19">openexr</td>
</tr>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;font-size:11pt;color:black;font-family:Calibri,=
sans-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;bac=
kground-position:initial;background-size:initial;background-repeat:initial;=
background-origin:initial;background-clip:initial" height=3D"19">openssl</t=
d>
</tr>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;font-size:11pt;color:black;font-family:Calibri,=
sans-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;bac=
kground-position:initial;background-size:initial;background-repeat:initial;=
background-origin:initial;background-clip:initial" height=3D"19">pango</td>
</tr>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;font-size:11pt;color:black;font-family:Calibri,=
sans-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;bac=
kground-position:initial;background-size:initial;background-repeat:initial;=
background-origin:initial;background-clip:initial" height=3D"19">pixman</td=
>
</tr>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;font-size:11pt;color:black;font-family:Calibri,=
sans-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;bac=
kground-position:initial;background-size:initial;background-repeat:initial;=
background-origin:initial;background-clip:initial" height=3D"19">stb-image<=
/td>
</tr>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;font-size:11pt;color:black;font-family:Calibri,=
sans-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;bac=
kground-position:initial;background-size:initial;background-repeat:initial;=
background-origin:initial;background-clip:initial" height=3D"19">swscale</t=
d>
</tr>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;font-size:11pt;color:black;font-family:Calibri,=
sans-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;bac=
kground-position:initial;background-size:initial;background-repeat:initial;=
background-origin:initial;background-clip:initial" height=3D"19">theora</td=
>
</tr>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;font-size:11pt;color:black;font-family:Calibri,=
sans-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;bac=
kground-position:initial;background-size:initial;background-repeat:initial;=
background-origin:initial;background-clip:initial" height=3D"19">x264</td>
</tr>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;font-size:11pt;color:black;font-family:Calibri,=
sans-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;bac=
kground-position:initial;background-size:initial;background-repeat:initial;=
background-origin:initial;background-clip:initial" height=3D"19">zlib</td>
</tr>
</tbody>
</table>
<br>Please give me the version=C2=A0detail of these components,=C2=A0 we a=
re planning to use dunfell but before that we needed the version detail of =
all these components in Yocto.
<br>
</blockquote></div>

--00000000000042e67905ae3df052--
