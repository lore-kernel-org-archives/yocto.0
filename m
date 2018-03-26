Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC45AE00B49; Mon, 26 Mar 2018 13:17:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f47.google.com (mail-pg0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C477DE007DA
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 13:17:03 -0700 (PDT)
Received: by mail-pg0-f47.google.com with SMTP id t10so1574384pgv.8
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 13:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=LgC59rIZLD685YfufMCbIx0xICW4NVElmnqlC3vwJwE=;
	b=mlbnkduIR74NnT8+MsYIW1JgFvv/QLmfCngn0CgZVOo+ZAVxudutOgO14MgcO7P6gd
	V9Qq+je4AjdiD4kTRbJHRxKQnlUJgL8+XeEdynyhdRDCDyDSuLFZ/dTprf7fBbiFtW0B
	4TAXiDTcyuC9x+kFOS6K4V2E+iPOgb5fbOjXSRRchf9La9K4RJqIwOAjDeoapPhCZhKh
	6PJERpiGlqw0ifYg7EE1wp8Q0VL/eGF18YKanzy9jJD8qDI6kiB2u+awHK+yZoQk3T2X
	3UApEs0r6M3w3BH3v4j7yZq8XlnlZu/e0xiDhVp2b7YLZ5iQI43UrzhM/vS0ALkZ10es
	epuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=LgC59rIZLD685YfufMCbIx0xICW4NVElmnqlC3vwJwE=;
	b=HfTl5JdW4TJCy4dcovf0Hc+aUeR1ZSCIvd4eFF8WWMUCa/+NTeJVBPs7beHOVGyF/A
	mSVZ1JZ+MXxLEdVzQkJV/3BoNRJfouDfiHRgu0GDcb/onId3nJXPKs8+3xF0Z/Fruqrt
	FC6wZLZDudkTn+jh3Guha2D13BK1XK2bO8+poXTS9ZtaTQc1Dk11ZUvwfazejZT7W9eY
	tL/6PUhc9QWcf3khAYOUtIciWh5TLcAwMXvh4uQVWZpihan3omD5BpyZWDX0qjZX/5MJ
	ZCP0cCzrFbTE90hDwrGvMSZMU/8s4lqnpbaa6nLEG7DQCcJHBOEGuqYklIloxKBqbtzs
	u+QA==
X-Gm-Message-State: AElRT7F/Eut4u9K5vMcKU/aQsSPH/R+xYFeSi4xlO0YrW4ikJBPztzjH
	vVzq5QDX+9mqxSF1SNLMGQEdyqfuAU1YRpDh7yNwpw==
X-Google-Smtp-Source: AG47ELsFYb5ghsJRYrIxNtDrceOWZnpcwu7LdoZnJBh6YXfDzrgvqyrdT453fIN2D05jptQb/3v04XPScJRwpnnyYSI=
X-Received: by 10.99.66.135 with SMTP id p129mr29948674pga.220.1522095422891; 
	Mon, 26 Mar 2018 13:17:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.155.66 with HTTP; Mon, 26 Mar 2018 13:17:02 -0700 (PDT)
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Mon, 26 Mar 2018 22:17:02 +0200
Message-ID: <CAPb0b+N-ZJBZibsfyzqy9o8jrzsXAKa2Ke495bVm_py_uw2ttg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: how to add pulseaudio
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
X-List-Received-Date: Mon, 26 Mar 2018 20:17:04 -0000
Content-Type: multipart/alternative; boundary="94eb2c08e99cfeec89056856744f"

--94eb2c08e99cfeec89056856744f
Content-Type: text/plain; charset="UTF-8"

hello

i am trying to add pulse audio to an image but i don't get pulse audio
being installed in the image

I am using the following
DISTRO_FEATURES_append += " ext2 pam usbhost ${DISTRO_FEATURES_LIBC}
pulseaudio pulseaudio-module-dbus-protocol pulseaudio-module-bluetooth"
IMAGE_INSTALL_append += " python dbus gconf glib-2.0"

what am i doing wrong?

--94eb2c08e99cfeec89056856744f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>hello<br><br></div>i am trying to add pulse=
 audio to an image but i don&#39;t get pulse audio being installed in the i=
mage<br><br></div>I am using the following<br>DISTRO_FEATURES_append +=3D &=
quot; ext2 pam usbhost ${DISTRO_FEATURES_LIBC} pulseaudio pulseaudio-module=
-dbus-protocol pulseaudio-module-bluetooth&quot;<br>IMAGE_INSTALL_append +=
=3D &quot; python dbus gconf glib-2.0&quot;<br><br></div>what am i doing wr=
ong?<br></div>

--94eb2c08e99cfeec89056856744f--
