Return-Path: <adam.yh.lee@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BF10E00D14; Wed,  1 Nov 2017 07:10:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (adam.yh.lee[at]gmail.com)
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
	*      [209.85.161.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.169 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f169.google.com (mail-yw0-f169.google.com
	[209.85.161.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92285E00CCA
	for <yocto@yoctoproject.org>; Wed,  1 Nov 2017 07:10:53 -0700 (PDT)
Received: by mail-yw0-f169.google.com with SMTP id z195so1929704ywz.6
	for <yocto@yoctoproject.org>; Wed, 01 Nov 2017 07:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=VK1zEf2Bp+XzxXHTtFbk/FItuc1s0PBclNXhgCG56+Q=;
	b=QI63lZut0GN7LzMKtscbOz+pM2gVF785kjWJuMNHzFh5yXmSxEW4sZ/DmFsoPZcfFw
	gvRdE9/C5ZFied2aiD7YQ1C5mnv2qTX9XULXExla0p2a5d2wf3up85+VqB+YYHhaTrSj
	CynsR6q7MGY8hOf5pbK2TmNMRQ7ttmB6O4icXETDR7MgAAhKwQXaCRrNQ73oKLt+6XuI
	YtTm78/hBulkhb+iL565NillIhRlC6ZVPtKxlyxbzd+5mJX/dT/IdMQuCYIzVhabBw+p
	hMTRGPbd8UVXM2n+jBor+t69WPr+RSjXYdtnrCxRYMUjbO2e/Uf/743HImtnWbrJuFw5
	qulQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=VK1zEf2Bp+XzxXHTtFbk/FItuc1s0PBclNXhgCG56+Q=;
	b=FYZLqhvmcvw+Q2GmyiEPVLpd7FKcaaRNLeXXmSJfkb5gTz/j88JildKKgx57G/IE9C
	INQ9RmR2Pt9JK2+f5sY9TnZ2oKsSwKfzZDpqP0gq2+755KeOADdtknHeKlEfCSIMHNng
	cmtPBMILJbhJ2cSzhFT0iZfdW2b03VHfGNarigXdlUyUp2s4ig7PcKmEbBa171JvM1Ti
	x2kC5CF0ZX20hKpyY3XOJOtDdR1JYcwoKE/TFk3re8b4bCNinNlcNvk7KK+W5eyCOVeK
	HMQV8ITxCFjCI7YDA+amLpZSlgGN0pkFvrksHIIxlpNqWbzIP1ehvfVjhBWvfrEhGLRE
	OjvA==
X-Gm-Message-State: AMCzsaVfFDnSOK2OAtiAQoSHwxic+z3QMmYgA1zKTiUUwlxrE6QbuIrS
	w+RQJzwYIlXJpiWZEAinGPdDlGrjMNaESu76oZY=
X-Google-Smtp-Source: ABhQp+SmFxF3KYQBn40o+DyoBFqRc6dQnJA/tD+ScZ4WzNUHbyoLpOP6stmE+5X3RSIqGJbMcOiPVr0EYqHx5g7JyTc=
X-Received: by 10.37.255.18 with SMTP id c18mr3293926ybe.256.1509545452693;
	Wed, 01 Nov 2017 07:10:52 -0700 (PDT)
MIME-Version: 1.0
From: Adam Lee <adam.yh.lee@gmail.com>
Date: Wed, 01 Nov 2017 14:10:42 +0000
Message-ID: <CAFeBWL7V1TNoGj4gpc5QkQ4mraFwUmvt77sAAxyGTmrivTQ-Mw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Checking for xwayland
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
X-List-Received-Date: Wed, 01 Nov 2017 14:10:54 -0000
Content-Type: multipart/alternative; boundary="f403045ea15e7aedd6055cec7053"

--f403045ea15e7aedd6055cec7053
Content-Type: text/plain; charset="UTF-8"

Hello, how do I tell if I successfully built xwayland into my image?

I looked for "xwayland" binary but to no avail.

Adam

--f403045ea15e7aedd6055cec7053
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Hello, how do I tell if I successfully built xwayland into my image?<div><br></div><div>I looked for &quot;xwayland&quot; binary but to no avail.</div><div><br></div><div>Adam</div></div>

--f403045ea15e7aedd6055cec7053--
