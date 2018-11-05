Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03AF0E00872; Mon,  5 Nov 2018 02:27:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14B8FE00754
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2018 02:27:40 -0800 (PST)
Received: by mail-ot1-f43.google.com with SMTP id m15so7451284otl.7
	for <yocto@yoctoproject.org>; Mon, 05 Nov 2018 02:27:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=S+0Vd9XxoCVXG46y3vQxHv0KDZkvPSRGF/MYMBP/wlE=;
	b=BQc3ZiDQ26vq9EHXkgmwR0sQRVpqdxpETVZG3vIWS1HuodtuOIYf4YVapbMqHlcsp6
	L46wvhRSNUlxMZRhEM4lXvcv2NnVURiJxbyU/cSRpEQTArptFCMTRPuQZGAtrmgFfOTd
	NZ/2juyRYhxSgcUBGm5++uU0tonl+hFUyauuIACYBXyYKTIgqPL4W2BBldHR+w1zWt42
	zU9Z1/cATJAcPmq47ToyD+Hf+FWRPsBNR6xJgWZR3YsvBpxcP0gU3sPOO/v9vNqITDxf
	uezyLDeFH62FJYlIepZqArWUJFH2xxnlBVbsnhfUIsmMv2+VtbSmqcMbrkFNxITsSP7N
	bReA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=S+0Vd9XxoCVXG46y3vQxHv0KDZkvPSRGF/MYMBP/wlE=;
	b=fZ6Zp/EwIg6ZyGYJB0JATcJHeIFnmEz/NB4HvlDmOdw4D9Hs5Z+jfNIuFxBoVP2giE
	98wxo3x01IrJn44HjXENYlw0JlnqE1uP/9Zu/l9UwS0pApvkV4xZnxwvOK2MXZ9rzdJn
	zunW0ntBtMPddhZmYKI5qi3vbbi7FoAeuQIPwDDkFGX0dSRoR7sq87wrGXnrKd7LsB2Y
	UNCgLzQzJP5mX5LGvw8MPxWBZkYqWbFx5gqlGVvuB7scXhZfiYaAISkhtQchtlNnzxdg
	95oggun981pWiAQKHv+gimz81LG2f9jd6X7W1nuYDUN64A2k5nOeIW13cnyXHJM5HXg2
	wN4A==
X-Gm-Message-State: AGRZ1gIbMmcrLoA5+elgY0IowoIoIb/Ur0ejt0ooN58Bfh941ujNEByu
	CB4l4n0ARW/cobTpho3D4eh6pYYstOZoP4S+ohLuWw==
X-Google-Smtp-Source: AJdET5dGI+CLkpyvu47ieYrrJPltehQDdgpXd+VhhQA4nMsQ7IVJSYaz9n220h000RiGxZMSsYkWHcoFTYuqCNJVhXo=
X-Received: by 2002:a9d:5a6:: with SMTP id 35mr12465124otd.221.1541413660159; 
	Mon, 05 Nov 2018 02:27:40 -0800 (PST)
MIME-Version: 1.0
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Mon, 5 Nov 2018 11:27:29 +0100
Message-ID: <CACKFPN1n1+bJzzmDOJ68bm6+vNhE9piEz9MY5yXpBiyvm_eRQw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Recipes documentation
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
X-List-Received-Date: Mon, 05 Nov 2018 10:27:50 -0000
Content-Type: multipart/alternative; boundary="000000000000aa740c0579e85573"

--000000000000aa740c0579e85573
Content-Type: text/plain; charset="UTF-8"

Hi all,

this is a proposal for a feature, I hope it's the right way to do it.

It would be nice if there would be a standard way to document recipes and
then be able to read this documentation from the command line. Something
like the man pages.

For example, there could be either a variable in the recipe (e.g. MAN = "")
or
maybe better an additional file so there's no much "noise" in the recipe.
For
example it would be nice if there was an optional file like
<recipe-name>.man
and there use preferably a markdown (or whatever) format to document the
recipe.

By documenting the recipe, I mean to have a short/long description how to
use
it properly or other valuable information.

As the yocto project gets bigger and more complicated, it would be nice if
there
was a facility like that.

There might be already and I'm not aware of that. In this case, can someone
please point me to the right direction?

Regards,
Dimitris

--000000000000aa740c0579e85573
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>this is a proposal for a featur=
e, I hope it&#39;s the right way to do it.</div><div><br></div><div>It woul=
d be nice if there would be a standard way to document recipes and<br>then =
be able to read this documentation from the command line. Something</div><d=
iv>like the man pages.</div><div><br></div><div>For example, there could be=
 either a variable in the recipe (e.g. MAN =3D &quot;&quot;) or<br>maybe be=
tter an additional file so there&#39;s no much &quot;noise&quot; in the rec=
ipe. For<br>example it would be nice if there was an optional file like &lt=
;recipe-name&gt;.man</div><div>and there use preferably a markdown (or what=
ever) format to document the<br>recipe.</div><div><br></div><div>By documen=
ting the recipe, I mean to have a short/long description how to use</div><d=
iv>it properly or other valuable information.</div><div><br></div><div>As t=
he yocto project gets bigger and more complicated, it would be nice if ther=
e</div><div>was a facility like that.</div><div><br></div><div>There might =
be already and I&#39;m not aware of that. In this case, can someone<br>plea=
se point me to the right direction?</div><div><br></div><div>Regards,<br>Di=
mitris</div></div>

--000000000000aa740c0579e85573--
