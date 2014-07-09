Return-Path: <allenkll@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3210AE002AA; Wed,  9 Jul 2014 13:58:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.181 listed in list.dnswl.org]
Received: from mail-we0-f181.google.com (mail-we0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDCA1E002AA
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 13:58:01 -0700 (PDT)
Received: by mail-we0-f181.google.com with SMTP id q59so7956721wes.26
	for <yocto@yoctoproject.org>; Wed, 09 Jul 2014 13:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=I3Y0nUaQNiqPT9dFD61dDDGoQshRgdQ0oN1FXZ5fOyc=;
	b=EErNcZlHAzmq60xZwlqLhu/F5H57cBqS/Q5Te2TMsdtQPgZ4d57hVewlcxkALT3Nsb
	6UWh7bKy4dMAMy5ddQQi3SUlMCtqYAw8IvyvJ6xKLs1RlrKYy6mSBxaEBBOcobd37Hz/
	V0nkgSjeUx18gpfhHl+r+nkCm4r0FWiHkZfj/NpPBTxoXpGgUMXaueM0PrmVxJ6RG9PP
	KsxclYlWQ4JsHrmiL/pzbH9wUym/ngWBaWO6VyatFWHoAZRbR745AJQddRbz3WVMsfsg
	lWJTFbFsagQ/JgkFwDaVH6pWgv2aTut/j0CeKL+a0y+N+18HQJyaHtKEJPMpbNQeNycq
	u1HQ==
MIME-Version: 1.0
X-Received: by 10.194.205.65 with SMTP id le1mr45003366wjc.67.1404939480600;
	Wed, 09 Jul 2014 13:58:00 -0700 (PDT)
Sender: allenkll@gmail.com
Received: by 10.216.186.134 with HTTP; Wed, 9 Jul 2014 13:58:00 -0700 (PDT)
Date: Wed, 9 Jul 2014 15:58:00 -0500
X-Google-Sender-Auth: voJf9K7JDbYLEYAUPCvdpDjnZr8
Message-ID: <CAO-21LPnS-BJyZw-SEiSveK5sP=sZaDnMRd9PHVVe5WG6NQG_A@mail.gmail.com>
From: "Allen Kennedy Jr." <allen@kennedystuff.com>
To: yocto@yoctoproject.org
Subject: Environment Variables being unset by bitbake?
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
X-List-Received-Date: Wed, 09 Jul 2014 20:58:10 -0000
Content-Type: multipart/alternative; boundary=047d7bb04930ac155304fdc8f6e8

--047d7bb04930ac155304fdc8f6e8
Content-Type: text/plain; charset=UTF-8

I am trying to run java program from a recipe.

I get an error that JAVA_HOME is not set.
I can verify that JAVA_HOME is set by echo $JAVA_HOME.

I can then run the program without issue, but from within a recipe it
seems that $JAVA_HOME is unset.

I have verified this with 'bbnote "java is here: ${JAVA_HOME}"' from within
a recipe.

Any ideas why or how this is getting unset, and how to fix?
I couldn't find any documentation that talks about this.

Thanks

--047d7bb04930ac155304fdc8f6e8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am trying to run java program from a recipe.=C2=A0 =
<br><br>I get an error that JAVA_HOME is not set. <br>I can verify that JAV=
A_HOME is set by echo $JAVA_HOME.=C2=A0 <br><br>I can then run the program =
without issue, but from within a recipe it <br>
seems that $JAVA_HOME is unset. <br><br>I have verified this with &#39;bbno=
te &quot;java is here: ${JAVA_HOME}&quot;&#39; from within a recipe.<br><br=
>Any ideas why or how this is getting unset, and how to fix? <br></div>
I couldn&#39;t find any documentation that talks about this.<br><div><br>Th=
anks<br></div></div>

--047d7bb04930ac155304fdc8f6e8--
