Return-Path: <ncrypticus@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04F9AE007A2; Mon,  8 Sep 2014 17:23:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ncrypticus[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f196.google.com (mail-we0-f196.google.com
	[74.125.82.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67012E00786
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 17:22:56 -0700 (PDT)
Received: by mail-we0-f196.google.com with SMTP id x48so649613wes.11
	for <yocto@yoctoproject.org>; Mon, 08 Sep 2014 17:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=y9lsfMwHG5VphO/frIxuIHTvExKF7Z9EKHg6t9h27a8=;
	b=gSYNrhQpFsDw7akHg7VHxNuleaQtNOEE448HLscWKd/7VEChdBBhrcnlw+3mO3Lhas
	t6gfEJDZoJEjblJAYIxcPDHBdjJWyc2D/dxJOHsROYOqdMwdDw3dG+CX7Up5+4gBjqmA
	OJVonVa2Dh3YF9OVzLaw/Q/uO7CeyV8zudS21gaDA7dSMAMCK2MZwPb5uvm9QI0CBHKR
	HZjyILpprRnCrV1jt/KdV58qs0dMMQF5UGwqQnQJ7Wokx/ixkqN9WkSEmKQz7ODm4BcE
	VthWAJFtbGVkCSOcVGWip339MDaxczdzh3iCWaCeoug+f72qItfDgJVEw433GlOnqi3P
	s4LQ==
MIME-Version: 1.0
X-Received: by 10.194.23.167 with SMTP id n7mr3271458wjf.35.1410222175641;
	Mon, 08 Sep 2014 17:22:55 -0700 (PDT)
Received: by 10.194.10.202 with HTTP; Mon, 8 Sep 2014 17:22:55 -0700 (PDT)
Date: Mon, 8 Sep 2014 17:22:55 -0700
Message-ID: <CAMSG=xUsOJqQLABzm-W2Stwc5xdGTP1pGKMA7Z4TiS5ftLtx1A@mail.gmail.com>
From: Nemicolopterus Crypticus <ncrypticus@gmail.com>
To: yocto@yoctoproject.org
Subject: ExpansionError during parsing
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
X-List-Received-Date: Tue, 09 Sep 2014 00:23:00 -0000
Content-Type: multipart/alternative; boundary=047d7b5d33eed56763050296ef40

--047d7b5d33eed56763050296ef40
Content-Type: text/plain; charset=UTF-8

I can't seem to get simple bash code to parse properly in my recipes.
I have something like this:

do_install_prepend(){
     bb.build.exec_func('do_change_dir', d)
}

do_change_dir(){
     cd <a directory>
 }

I get this when I try bitbake -c clean -f <project>:
NOTE: Error during finalise of <path>/<to>/<recipe>/recipe.bb          |
ETA:  --:--:--
ERROR: ExpansionError during parsing <path>/<to>/<recipe>/recipe.bb:
Failure expanding variable do_install: ShellSyntaxError:
LexToken(TOKEN,"'do_change_dir',",0,0)
followed by:
  LexToken(TOKEN,'d',0,0)
  LexToken(RPARENS,')',0,0)
  LexToken(NEWLINE,'\n',0,0)
  LexToken(TOKEN,'autotools_do_install',0,0)
  LexToken(NEWLINE,'\n',0,0)

This looks identical to this:
https://www.mail-archive.com/yocto%40yoctoproject.org/msg09403.html
https://www.mail-archive.com/yocto%40yoctoproject.org/msg04862.html

What am I missing?

--047d7b5d33eed56763050296ef40
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I can&#39;t seem to get simple bash code to parse properly=
 in my recipes. =C2=A0<div>I have something like this:</div><div><br></div>=
<div><div>do_install_prepend(){</div><div>=C2=A0 =C2=A0 =C2=A0bb.build.exec=
_func(&#39;do_change_dir&#39;, d)=C2=A0</div><div>}=C2=A0</div><div><br></d=
iv><div>do_change_dir(){</div><div>=C2=A0=C2=A0 =C2=A0 cd &lt;a directory&g=
t;=C2=A0</div><div>=C2=A0}</div></div><div><br></div><div>I get this when I=
 try bitbake -c clean -f &lt;project&gt;:</div><div><div>NOTE: Error during=
 finalise of &lt;path&gt;/&lt;to&gt;/&lt;recipe&gt;/<a href=3D"http://recip=
e.bb">recipe.bb</a> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| ETA: =C2=A0--:--:--=
</div><div>ERROR: ExpansionError during parsing &lt;path&gt;/&lt;to&gt;/&lt=
;recipe&gt;/<a href=3D"http://recipe.bb">recipe.bb</a>: Failure expanding v=
ariable do_install: ShellSyntaxError: LexToken(TOKEN,&quot;&#39;do_change_d=
ir&#39;,&quot;,0,0)</div><div>followed by:</div><div>=C2=A0 LexToken(TOKEN,=
&#39;d&#39;,0,0)</div><div>=C2=A0 LexToken(RPARENS,&#39;)&#39;,0,0)</div><d=
iv>=C2=A0 LexToken(NEWLINE,&#39;\n&#39;,0,0)</div><div>=C2=A0 LexToken(TOKE=
N,&#39;autotools_do_install&#39;,0,0)</div><div>=C2=A0 LexToken(NEWLINE,&#3=
9;\n&#39;,0,0)</div></div><div><br></div><div>This looks identical to this:=
</div><div><a href=3D"https://www.mail-archive.com/yocto%40yoctoproject.org=
/msg09403.html">https://www.mail-archive.com/yocto%40yoctoproject.org/msg09=
403.html</a><br></div><div><a href=3D"https://www.mail-archive.com/yocto%40=
yoctoproject.org/msg04862.html">https://www.mail-archive.com/yocto%40yoctop=
roject.org/msg04862.html</a><br></div><div><br></div><div>What am I missing=
?</div></div>

--047d7b5d33eed56763050296ef40--
