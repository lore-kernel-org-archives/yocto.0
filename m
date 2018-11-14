Return-Path: <theknoppix@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCEC0E00C4B; Wed, 14 Nov 2018 00:41:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (theknoppix[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CA56E00C3D
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 00:41:41 -0800 (PST)
Received: by mail-wr1-f45.google.com with SMTP id j17-v6so16247913wrq.11
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 00:41:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=1yKxDJxpO7CetUGtMzXxt2STcjcJFyyBPDqZVvKWgMY=;
	b=SNekyG4t+WWm0s2FU811LcciWRR7UHE6kN1RjOwTQNtMGegU+gdeSBDQQlbQSY8/IY
	PUGZM1CPw88uf1MeGMPhhJp7BRB0RHEYgFY1mBPnjXBioF7Uc4T5zESXh5WJ7ZXbOxxP
	9/TFbjEodzyvg1O+zGvdnYk34/bnIcW4qDrZbhjcUNZK+TbaAMoCMkxpfRNUJJe+C4sZ
	jtKp1m6SuV5pyFWMvFb99NndnMlRindiAWri3uD64YiteKpTK4jvom2RRs84Ts5eNvHc
	axg7H3DkJGGXea5VWa1Jn4fWKRR8L3923EcG/GVuinSdDmWRwTjJcqdlYF72zHiNk649
	nnLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=1yKxDJxpO7CetUGtMzXxt2STcjcJFyyBPDqZVvKWgMY=;
	b=EUyYcU2Vo/5t/VuB7t4HurXEsobd13vghcy3wgR3y8puoHjuPsAJJZ0aXmeki5gnxv
	9kyh+fudXYEd6D8kzTpArhVBq/VrvBP7GpRde6l8TaF13JtLuYnFagLJbx3NFbs5KW9k
	6F/SzurrEFUL9KTlyNK9atqsOfe02+M3RPzTVLz8/EVVa2zbK2ucmJ9neyM//KB9oCl2
	kZodhLS2n3OAK83SDQ1gwm44FA7KDRY6cA0qMgF8h36bg1mNgpuG5mpKR1fp85HrdvRE
	FcKQ30vjt8ncaUT+l615EKGntq4aTMiyMY/7B6mQFZkJeF+lg0xqVrK1hKUqAx3APtI4
	Bc8Q==
X-Gm-Message-State: AGRZ1gKpxt2DSE6F9VbJ4G+cdHpitk4gL6itW3DBJ/K3ux5VuJSepxLw
	e6KhO3gwom2HGUhNcRZbtxHDYcMQuSOPdy3+WelRQL/I
X-Google-Smtp-Source: AJdET5d0buGB1mPm2gXW45CDyjSmAH/jInJqoAQAbYaG6zPoO4zbHzgYoy8rjVispwp1P7PoSI4AnL49vPyv19jznXU=
X-Received: by 2002:adf:f651:: with SMTP id
	x17-v6mr894240wrp.229.1542184900457; 
	Wed, 14 Nov 2018 00:41:40 -0800 (PST)
MIME-Version: 1.0
From: Knoppix <theknoppix@gmail.com>
Date: Wed, 14 Nov 2018 11:41:28 +0300
Message-ID: <CAD9sEJu_CbZYAGCiytx1GuM+HEQ+ar8mRG+aWG55dRe_okpK8Q@mail.gmail.com>
To: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: meta-gnome: what are dependencies for gnome-full-desktop (gnome interface)
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
X-List-Received-Date: Wed, 14 Nov 2018 08:41:42 -0000
Content-Type: multipart/alternative; boundary="0000000000002b785d057a9be7c4"

--0000000000002b785d057a9be7c4
Content-Type: text/plain; charset="UTF-8"

(Excuse me for my english I am not native)

One disappointment for me was learn that meta-gnome is not fully-supported
for running desktop. So i want to write all remain recipes to use desktop
environment. I want to start from scratch (except from meta-debian-recipes)
because for learn gnome world.

Dear friends, how can I learn what are the necessary binaries&libraries for
gnome interface (i.e: desktop window&display-manager panel, topbar,
settings and other UI full-desktop-environment) to use on yocto project?
Which project is I should start to write its recipe?

My question is what should I search on search-engines?
Would you advice me a tutorial&manual please?

Kind regards.

--0000000000002b785d057a9be7c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>(Excuse me for my english I am not native)<br></div><=
div><br></div><div>One disappointment for me was learn that meta-gnome is n=
ot fully-supported for running desktop. So i want to write all remain recip=
es to use desktop environment. I want to start from scratch (except from me=
ta-debian-recipes) because for learn gnome world.</div><div><br></div><div>=
Dear friends, how can I learn what are the necessary binaries&amp;libraries=
 for gnome interface (i.e: desktop window&amp;display-manager panel, topbar=
, settings and other UI full-desktop-environment) to use on yocto project? =
Which project is I should start to write its recipe?<br></div><div><br></di=
v><div>My question is what should I search on search-engines?</div><div>Wou=
ld you advice me a tutorial&amp;manual please?</div><div><br></div><div>Kin=
d regards.<br></div></div>

--0000000000002b785d057a9be7c4--
