Return-Path: <aaron.biver@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 259EAE00BE9; Fri, 28 Jun 2019 11:34:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (aaron.biver[at]gmail.com)
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.48 listed in list.dnswl.org]
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
	[209.85.167.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D4F5E0096F
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 11:34:01 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id d11so4607639lfb.4
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 11:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=19LPX9XHexvPCWpT1BwDsssvXW4ykH5bYNV4AZKMIyg=;
	b=m7Nth9IkOQ9nbzKE7MmtBjYtHRhunEHbxRl+lAad4RHjrP5pb+fjoo5LEGDfJsNosS
	+DeB8fXzA5kA//N9DoSZ0d61QfZ1V2WjJTq/415zutY8y6wifAgHwrhmH1gIKUqUxH3o
	emokgRZo+ni0J/P0u3pgodWkAq8PJkFqkDCF3kpPtAKJgLmHca3LUFKEqn+B0EgsDAvc
	J5YN4xKrsrCTJO8uYWyvtWdm2OeuzWyWBNSmGNBidFrrHUtZcKhQJaetqCINLEdzfNp8
	xV6N3eMjWvQ089c+kQDBkJXDqiveLXwW1OyyBFHNrKhvX39or64wwBHj/u1Jjwrk458m
	aIig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=19LPX9XHexvPCWpT1BwDsssvXW4ykH5bYNV4AZKMIyg=;
	b=Eih7BnHV8iEHys6Pa9Kdwrg7o6c02IX2RGMMB5TGn7gYzvxgbjmscw1RbYRKoapnBF
	G6D0mKL+/n2r7ASrmh1eNtaIyDwO++b1Eqqh+kAoK7wWkKxzsHfNsop6QX79EMiVnSTS
	5Tf4S7cTxs9AhXyKxMnd9EqK7mtBhgt2jZHL6lHqMmQQAo9Wr+cNyoJyNSP6IgFb8CoO
	HztvPpdsVenAqFkUOcPdaJQKxOeVhkPZ2s9lqEsw/OE+r1wTfAOiYQceUJS7MJiUArxA
	/n9DNSdFBvtEQaYzGNt8mnw5tu3hpmxPNm38vHMEEyXW1pmIkMK4/WKXKZ2ddZ1j2JH5
	pV8A==
X-Gm-Message-State: APjAAAVa0IHDC3UomncxKMNrX3OwOpv3pJ/elHxrrOLXBACo0+TLZK73
	b1JoiCtZ9NKaNPaDgw7tlP7/ZxU1AHfyEyDPC4u1y5U1
X-Google-Smtp-Source: APXvYqyDlGeSLpLVjX6KECSeAqtgSRmjhXolpD95qpfNA5261OIc7yqZfcG4GBtceNApmV0r+gnlAg3g28pAUO4Msgo=
X-Received: by 2002:a19:550f:: with SMTP id n15mr5838723lfe.34.1561746839844; 
	Fri, 28 Jun 2019 11:33:59 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Biver <aaron.biver@gmail.com>
Date: Fri, 28 Jun 2019 14:33:48 -0400
Message-ID: <CAMd7AX9bg5u+Wm=bWbbW7_0A06Ko6njP9OuE96+-W1PxJjugUQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Creating a file within a recipe
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
X-List-Received-Date: Fri, 28 Jun 2019 18:34:03 -0000
Content-Type: multipart/alternative; boundary="0000000000009e3b1e058c6685a9"

--0000000000009e3b1e058c6685a9
Content-Type: text/plain; charset="UTF-8"

I'd like to be able to create a file using the cat command in a recipe.
The sub-goal is to have the file created somewhere I can actually find it:

do_create_tebf0808() {
cat > tebf0808.bif <<EOF
all:
{
    ${LATEST_TEBF0808_FW}
}
EOF
}

This fails at the "EOF" line:
ERROR: ParseError at ...firmware.bb:43: unparsed line: 'EOF'
                         | ETA:  --:--:--

Maybe sed would work better?

--0000000000009e3b1e058c6685a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;d like to be able to create a file using the ca=
t command in a recipe.=C2=A0 The sub-goal is to have the file created somew=
here I can actually find it:</div><div><br></div><div>do_create_tebf0808() =
{<br>cat &gt; tebf0808.bif &lt;&lt;EOF <br>all:<br>{<br>=C2=A0 =C2=A0 ${LAT=
EST_TEBF0808_FW}<br>}<br>EOF<br>}<br></div><div><br></div><div>This fails a=
t the &quot;EOF&quot; line:</div><div>ERROR: ParseError at ...<a href=3D"ht=
tp://firmware.bb:43">firmware.bb:43</a>: unparsed line: &#39;EOF&#39; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| ETA: =C2=A0=
--:--:--</div><div><br></div><div>Maybe sed would work better?</div><div><b=
r></div><div><br></div></div>

--0000000000009e3b1e058c6685a9--
