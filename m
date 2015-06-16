Return-Path: <florian@fnbk.cc>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 728C0E00960; Tue, 16 Jun 2015 09:40:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA739E00496
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 09:40:00 -0700 (PDT)
Received: by igblz2 with SMTP id lz2so18166753igb.1
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 09:40:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=Rwmtd9iFnvV4OuZzq70XpXHZRxXXh0Ch5jalV12XOjk=;
	b=fCYCtIPhpIt2yrUvpZiEuT4k/P/rVKnDVD56popcA72bY4OOiodHqTk+PGryJdF+fe
	HTrV3JRAOxUU/+7kz1memjdgoW7yJCmneWRVigVsnuuGDFfi66BroCzvi7ekTdc7EWzC
	wQxf4t31aPhyrBr3Bqw8NPoYjn6WCkDLqQMcSPFrWCIIgdiTX6NtUG08lwLbEGgklv0c
	mgfelphpQRTXqxJmNH6Dfrgw6xg5Pe+M1UCTPsYOUpTZ8tRlKAcB1Dx0sXW19VLoAl2V
	hJfz+N0l3eajFWHwgmhNtJWu0n4jHDi5hNCyZ+sCHeFm29uBUy/YVqrRGo4Fjd7dMXBs
	UzQw==
X-Gm-Message-State: ALoCoQlG6011PTWn+/Hfy+59xRcxYjT8ch9Fjf76YOV6zZ3HYL5/pCCqItM3yOXmF8ITzybOHsh+
MIME-Version: 1.0
X-Received: by 10.50.62.148 with SMTP id y20mr8422694igr.17.1434472799995;
	Tue, 16 Jun 2015 09:39:59 -0700 (PDT)
Received: by 10.79.116.145 with HTTP; Tue, 16 Jun 2015 09:39:59 -0700 (PDT)
Date: Tue, 16 Jun 2015 18:39:59 +0200
Message-ID: <CALgoR9PQqPqXhYofZeatpA-Gg0pUmYVs4Kaao6nf+JBny-+7Tg@mail.gmail.com>
From: Florian Boehmak <florian@fnbk.cc>
To: yocto@yoctoproject.org
Subject: [prelink-cross] error while loading shared libraries: ld-linux.so.3
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
X-List-Received-Date: Tue, 16 Jun 2015 16:40:03 -0000
Content-Type: multipart/alternative; boundary=047d7bdcab34af43c00518a539c8

--047d7bdcab34af43c00518a539c8
Content-Type: text/plain; charset=UTF-8

Hi, I tried to track down the error message which comes from rtld. This is
the call stack:

rtld.c:main()
    rtld.c:process_one_dso()
        dl-version.c:_dl_check_map_versions()



This is the code that produces the error message:

Elf64_Vernaux *aux;
struct link_map *needed = find_needed (strtab + ent->vn_file, map);

/* If NEEDED is NULL this means a dependency was not found
 and no stub entry was created.  This should never happen.  */
if (needed == NULL)
{
  _dl_signal_error (errval, NULL, NULL, strtab + ent->vn_file);
  printf("error while loading shared libraries: %s", strtab + ent->vn_file);
  exit (1);
}



This code loops through the needed versions of the link_map (Elf64_Verneed
*ent) and calls find_needed for each entry. find_needed calls
_dl_name_match_p and compares the library name. I have captured the
individual calls in debug statements and this is the result:

_dl_name_match_p name:libc.so.6
_dl_name_match_p name:libc.so.6
_dl_name_match_p name:libc.so.6
_dl_check_map_versions needed:1, file:libc.so.6

_dl_name_match_p name:libgcc_s.so.1
_dl_name_match_p name:libgcc_s.so.1
_dl_check_map_versions needed:1, file:libgcc_s.so.1

_dl_name_match_p name:libc.so.6
_dl_name_match_p name:libc.so.6
_dl_check_map_versions needed:1, file:libc.so.6

_dl_name_match_p name:ld-linux.so.3
_dl_name_match_p name:ld-linux.so.3
_dl_check_map_versions needed:NULL, file:ld-linux.so.3



As I can see the dependencies libc.so.6 and libgcc_s.so.1 are met. Only
ld-linux.so.3 is not. libc.so.6, libgcc_s.so.1 and ld-linux.so.3 are all in
the same location, so I don't understand what this error means.

arm-2012.03/arm-none-linux-gnueabi/libc/lib:
-rwxr-xr-x 1 developer users  177212 10. Jun 18:43 ld-2.15.so
lrwxrwxrwx 1 developer users      10 10. Jun 18:43 ld-linux.so.3 ->
ld-2.15.so
lrwxrwxrwx 1 developer users      12 10. Jun 18:43 libc.so.6 -> libc-2.15.so
-rw-r--r-- 1 developer users     135 10. Jun 18:43 libgcc_s.so
-rw-r--r-- 1 developer users 3190583 10. Jun 18:43 libgcc_s.so.1
...


Any hints? :-)
Thank you.

Cheers
Florian

--047d7bdcab34af43c00518a539c8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, I tried to track down the error message which com=
es from rtld. This is the call stack:</div><div><br></div><div>rtld.c:main(=
)</div><div>=C2=A0 =C2=A0 rtld.c:process_one_dso()</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 dl-version.c:_dl_check_map_versions()</div><div><br></div><di=
v><br></div><div><br></div><div>This is the code that produces the error me=
ssage:</div><div><br></div><div>Elf64_Vernaux *aux;</div><div>struct link_m=
ap *needed =3D find_needed (strtab + ent-&gt;vn_file, map);</div><div><br><=
/div><div>/* If NEEDED is NULL this means a dependency was not found</div><=
div>=C2=A0and no stub entry was created.=C2=A0 This should never happen. =
=C2=A0*/</div><div>if (needed =3D=3D NULL)</div><div>{</div><div>=C2=A0 _dl=
_signal_error (errval, NULL, NULL, strtab + ent-&gt;vn_file);</div><div>=C2=
=A0 printf(&quot;error while loading shared libraries: %s&quot;, strtab + e=
nt-&gt;vn_file);</div><div>=C2=A0 exit (1);</div><div>}</div><div><br></div=
><div><br></div><div><br></div><div>This code loops through the needed vers=
ions of the link_map (Elf64_Verneed *ent) and calls find_needed for each en=
try. find_needed calls _dl_name_match_p and compares the library name. I ha=
ve captured the individual calls in debug statements and this is the result=
:=C2=A0</div><div><br></div><div>_dl_name_match_p name:libc.so.6</div><div>=
_dl_name_match_p name:libc.so.6</div><div>_dl_name_match_p name:libc.so.6</=
div><div>_dl_check_map_versions needed:1, file:libc.so.6</div><div><br></di=
v><div>_dl_name_match_p name:libgcc_s.so.1</div><div>_dl_name_match_p name:=
libgcc_s.so.1</div><div>_dl_check_map_versions needed:1, file:libgcc_s.so.1=
</div><div><br></div><div>_dl_name_match_p name:libc.so.6</div><div>_dl_nam=
e_match_p name:libc.so.6</div><div>_dl_check_map_versions needed:1, file:li=
bc.so.6</div><div><br></div><div>_dl_name_match_p name:ld-linux.so.3</div><=
div>_dl_name_match_p name:ld-linux.so.3</div><div>_dl_check_map_versions ne=
eded:NULL, file:ld-linux.so.3</div><div><br></div><div><br></div><div><br><=
/div><div>As I can see the dependencies libc.so.6 and libgcc_s.so.1 are met=
. Only ld-linux.so.3 is not. libc.so.6, libgcc_s.so.1 and ld-linux.so.3 are=
 all in the same location, so I don&#39;t understand what this error means.=
</div><div><br></div><div>arm-2012.03/arm-none-linux-gnueabi/libc/lib:</div=
><div>-rwxr-xr-x 1 developer users =C2=A0177212 10. Jun 18:43 <a href=3D"ht=
tp://ld-2.15.so">ld-2.15.so</a></div><div>lrwxrwxrwx 1 developer users =C2=
=A0 =C2=A0 =C2=A010 10. Jun 18:43 ld-linux.so.3 -&gt; <a href=3D"http://ld-=
2.15.so">ld-2.15.so</a></div><div>lrwxrwxrwx 1 developer users =C2=A0 =C2=
=A0 =C2=A012 10. Jun 18:43 libc.so.6 -&gt; <a href=3D"http://libc-2.15.so">=
libc-2.15.so</a></div><div>-rw-r--r-- 1 developer users =C2=A0 =C2=A0 135 1=
0. Jun 18:43 libgcc_s.so</div><div>-rw-r--r-- 1 developer users 3190583 10.=
 Jun 18:43 libgcc_s.so.1</div><div>...</div><div><br></div><div><br></div><=
div>Any hints? :-)</div><div>Thank you.</div><div><br></div><div>Cheers</di=
v><div>Florian</div>
</div>

--047d7bdcab34af43c00518a539c8--
