Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 484D0E00D04; Wed, 29 Nov 2017 13:35:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADCC4E00CC4
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 13:35:34 -0800 (PST)
Received: by mail-oi0-f43.google.com with SMTP id o64so3439890oia.9
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 13:35:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ap0lRvpqCGYIun0n769tUeCWNXnLe8VYjLV9YWjG/xw=;
	b=dYpibdZfzP/L5lYX9q3OGqN578SlvBqcRV48LmnOVGBE2ShlhIoeYQVGJQ5fbE7fS3
	cOcI3aHmHNwSnYGlNf9q4ouarXQTMR/FqI+jpA4VsdIZp4WnggqSW5+gl0OF+61usj4Q
	T5jm7HkFYGTaMBG9JoENP5RlOQfOTgxedZbC+eBX76dMO0cdH9gBjhiUiuX0XF2SMxsO
	MGwbj9DS4aT7J5ZQDYPLjLYeQ3rWaaXMMflVviV74vf7yb4XvAvdkySwVEs6FNXKXp7i
	gbz1Tm1Ux9hEVjN3zdEOr16Bm9AoTNG4rxiQNPodI7/DcnArxEU2gYX7kIeuiaUXnaBx
	Rt7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ap0lRvpqCGYIun0n769tUeCWNXnLe8VYjLV9YWjG/xw=;
	b=X/CxX+JnBSDMQ5nj6UonjuTyf/jgM8n64AAwyUAB9CLfezmgD7kGDUREmkRXlJrdu2
	cznk0vhEkD1WUo3nWtH2CPwSXGPTYakdT1u3LYW6LKEifNmtl+amUyvlFrRWwnp7s7Nx
	3Qg2iwltOmL+vLHK+JBIrLvoQ4KCqOEPTUJuoFDS8aavTubPE5UfFaKhENNV7UUOpidV
	Brj1+oChDc2l0z+3rNSKZXr5y+oVzVp+RvzGx7WNeUZj8nJvnfhfTTjR1kX2rKWwxIIm
	MAv9MMFiUn5TU7P8lk1x1FZAboIy5JyOqUOEBT4jXNKhPXofZ999nwV5epkESoskgIEX
	6qDA==
X-Gm-Message-State: AJaThX4uXpD5IDjs4WVIHaU3/gW++iE6rxL9URvBuDS1TLpspN9lP1QF
	QobnpAsfghHWyL5SI04Ie4PeouYy5S+e58TGsrw=
X-Google-Smtp-Source: AGs4zMZazfxb8CDyA2VvvOsqJzc2Me9U5tCYJMYDUPS4qaUbuVVZGjeivDUk1QT8vO5hYKFqYd/qP3wnOBkzjpzFagQ=
X-Received: by 10.202.64.65 with SMTP id n62mr3205687oia.110.1511991333270;
	Wed, 29 Nov 2017 13:35:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Wed, 29 Nov 2017 13:35:32 -0800 (PST)
From: Jerry Lian <jerry.lian@gmail.com>
Date: Wed, 29 Nov 2017 16:35:32 -0500
Message-ID: <CAE0QtjOcjf8TL5Hx5WbpLOoZ4kMm84CbWcwYUZo+bM6CSzSnuw@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Concept clarification: can we deploy Yocto SDK to target?
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
X-List-Received-Date: Wed, 29 Nov 2017 21:35:35 -0000
Content-Type: multipart/alternative; boundary="001a113dab0652ba67055f25eaed"

--001a113dab0652ba67055f25eaed
Content-Type: text/plain; charset="UTF-8"

I am confused about the concept of Yocto SDK:
* when we use "bitbake -c populate_sdk some_image", we obtain sysroots for
both target and host.
* But why do we need sysroot for host?

* I know we can build application under target-sysroot (surely source the
environment), with fast speed.
* But can we deploy target-sysroot to hardware-target?
(Yes, I do want to compile/build application inside hardware-target, even
though it is slow)

Thanks!

--001a113dab0652ba67055f25eaed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am confused about the concept of Yocto SDK:<div>* when w=
e use &quot;bitbake -c populate_sdk some_image&quot;, we obtain sysroots fo=
r both target and host.</div><div>* But why do we need sysroot for host?</d=
iv><div><br></div><div>* I know we can build application under target-sysro=
ot (surely source the environment), with fast speed.</div><div>* But can we=
 deploy target-sysroot to hardware-target?</div><div>(Yes, I do want to com=
pile/build application inside hardware-target, even though it is slow)</div=
><div><br></div><div>Thanks!</div></div>

--001a113dab0652ba67055f25eaed--
