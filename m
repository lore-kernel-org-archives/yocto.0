Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 379EEE00931; Fri,  1 Jul 2016 06:43:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E58EDE006D2
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 06:43:24 -0700 (PDT)
Received: by mail-oi0-f67.google.com with SMTP id d132so12702943oig.2
	for <yocto@yoctoproject.org>; Fri, 01 Jul 2016 06:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=EFgR0hO7oVxNZiuOGNBvGkagyXQg4ofzfTZRgFM69hk=;
	b=uVdb3FKLEHIerXn/dBY3YYQso661GXWbliZe/NAjVT/Tp+A+OD2tMskeDENAgu3BPF
	OkJzOnE/tSrt2kTYavtIMv346YQ0MD3dI44w8gGfcnUSduBBg+xpCcHjV7GNKcrzE8y3
	10LudxKX4ViKwJCvlECP/bBgsdEaRZXcyFkDZYNxSZrQTcWBQ5MZO0RuBhFjRnfP6AWb
	BAVvE6icrIJEUxpBgvj6CQDW0oY0xWWYptCbRTAh05dz7fJdyIjK8FmKuqRNa0nFeJsg
	YboVn79b9VdIBUSyfE+47GSoWmBTo8fx0gQdBCYYD/wI8ZtWodXF/gKg0JU9oqWydKdH
	ofmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=EFgR0hO7oVxNZiuOGNBvGkagyXQg4ofzfTZRgFM69hk=;
	b=A0DjVEv6K0FrO9y2/hVCqZ9033RfjS+zyQlv2l88iws3rSw+QTs7J4H3Ej3+mVui/b
	+USYryGlpgBr3p+axwek66UCcxu+obK7YopHHPpJdu8D9ZVNMoBSZnm/Mk0DdGShCLWB
	tpYTqszi/Z+pq2UUzsftbpIA3+dcwfmz3AJzbnLtDaMP+RtgioZZmab3curSAZ8B2AXO
	4QiXiWa2BDZecmZviwmC+3zRen3DqKky1QwsQn7KIuM1R4TR9irCPxmkqknu05pxfHHb
	tQhgISv9JsWC80jN4lVIR1h2OvyuNYOva1/FPmfDruBtPSy/j5ocB/O78p2GoYnf5Dgu
	mb8g==
X-Gm-Message-State: ALyK8tLxJcnvyTkCJR1xWpZ/4ciCyfvNMOoBojR7xn0LJgxvYD+SBrT0QYR0HqQ6dFVhC/IYWTQdV6WtaKOxCA==
X-Received: by 10.202.205.84 with SMTP id d81mr13399361oig.171.1467380603540; 
	Fri, 01 Jul 2016 06:43:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.54.189 with HTTP; Fri, 1 Jul 2016 06:43:23 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
Date: Fri, 1 Jul 2016 19:13:23 +0530
Message-ID: <CALwQErovo9JQV7apy+-Qnk9Dv5SDArmS+793GuwWoznF-gWAcQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-selinux] Regarding "systemd" support with refpolicy-minimum v20151208
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
X-List-Received-Date: Fri, 01 Jul 2016 13:43:28 -0000
X-Groupsio-MsgNum: 30846
Content-Type: multipart/mixed; boundary=001a1134ede2a060b10536932b6a

--001a1134ede2a060b10536932b6a
Content-Type: multipart/alternative; boundary=001a1134ede2a060ab0536932b68

--001a1134ede2a060ab0536932b68
Content-Type: text/plain; charset=UTF-8

Hi,

Using refpolicy-minimum v20151208 with systemd as init manager,

I am facing few issues during enforcing mode,
1. systemd service status check, start & stop
2. auditd logfile error, so it is mixing with the boot log.
3. also other avc denials related to tmpfs & other types etc..


setup details:poky and meta-selinux: both at master head & systemd enabled.
with these SELinux booleans enabled: i.systemd_tmpfiles_manage_all
ii.allow_mount_anyfile

captured the avc denial to fix the systemd execution well, attached
SELinux-Modules.txt :- the allow rules generated using audit tools.
I am trying to merge these module into actual refpolicy modules, so we get
the out of box experience for smooth systemd execution.
Observed policy store seems corrupted some time, when start inserting the
prepared policy modules allow rules into actual refpolicy modules..

Does anyone also faced similar issues?

Any pointers or references will be a great help.


Thanks
Shrikant

--001a1134ede2a060ab0536932b68
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br></div>Using refpolicy-minimum v201512=
08 with systemd as init manager, <br><br>I am facing few issues during enfo=
rcing mode, <br>1. systemd service status check, start &amp; stop<br>
2. auditd logfile error, so it is mixing with the boot log. <br>3. also oth=
er avc denials related to tmpfs &amp; other types etc..<br><br><br>setup de=
tails:poky and meta-selinux: both at master head &amp; systemd enabled.<br>=
with these SELinux booleans enabled: i.systemd_tmpfiles_manage_all ii.allow=
_mount_anyfile <br><br>captured the avc denial to fix the systemd execution=
 well, attached SELinux-Modules.txt :- the allow rules generated using audi=
t tools.<br></div><div>I am trying to merge these module into actual refpol=
icy modules, so we get the out of box experience for smooth systemd executi=
on.<br></div><div>Observed policy store seems corrupted some time, when sta=
rt inserting the prepared policy modules allow rules into actual refpolicy =
modules..<br><br></div><div>Does anyone also faced similar issues? <br><br>=
</div><div>Any pointers or references will be a great help.<br></div><div><=
br><br></div><div>Thanks<br></div><div>Shrikant<br></div><div></div><br></d=
iv>

--001a1134ede2a060ab0536932b68--

--001a1134ede2a060b10536932b6a
Content-Type: text/plain; charset=US-ASCII; name="SELinux-Modules.txt"
Content-Disposition: attachment; filename="SELinux-Modules.txt"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_iq3rovgj0

IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMgU0VMaW51eCBNb2R1bGVzICMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjCgoKCnJlcXVpcmUgewoJdHlwZSB1bmNvbmZpbmVkX3Q7Cgl0
eXBlIGluaXRfdDsKCWNsYXNzIHN5c3RlbSByZWxvYWQ7Cn0KCiM9PT09PT09PT09PT09IHVuY29u
ZmluZWRfdCA9PT09PT09PT09PT09PQphbGxvdyB1bmNvbmZpbmVkX3QgaW5pdF90OnN5c3RlbSBy
ZWxvYWQ7CgojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCgpyZXF1aXJlIHsKCXR5cGUgdG1wZnNf
dDsKCXR5cGUgYXVkaXRkX3Q7CgljbGFzcyBmaWxlIGNyZWF0ZTsKfQoKIz09PT09PT09PT09PT0g
YXVkaXRkX3QgPT09PT09PT09PT09PT0KYWxsb3cgYXVkaXRkX3QgdG1wZnNfdDpmaWxlIGNyZWF0
ZTsKCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKCnJlcXVpcmUgewoJdHlwZSB0bXBmc190OwoJ
dHlwZSBhdWRpdGRfdDsKCWNsYXNzIGZpbGUgeyBvcGVuIHJlYWQgfTsKfQoKIz09PT09PT09PT09
PT0gYXVkaXRkX3QgPT09PT09PT09PT09PT0KYWxsb3cgYXVkaXRkX3QgdG1wZnNfdDpmaWxlIHsg
b3BlbiByZWFkIH07CgojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCgpyZXF1aXJlIHsKCXR5cGUg
dG1wZnNfdDsKCXR5cGUgYXVkaXRkX3Q7CgljbGFzcyBmaWxlIGFwcGVuZDsKfQoKIz09PT09PT09
PT09PT0gYXVkaXRkX3QgPT09PT09PT09PT09PT0KYWxsb3cgYXVkaXRkX3QgdG1wZnNfdDpmaWxl
IGFwcGVuZDsKCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKCnJlcXVpcmUgewoJdHlwZSB0bXBm
c190OwoJdHlwZSBhdWRpdGRfdDsKCWNsYXNzIGZpbGUgZ2V0YXR0cjsKfQoKIz09PT09PT09PT09
PT0gYXVkaXRkX3QgPT09PT09PT09PT09PT0KYWxsb3cgYXVkaXRkX3QgdG1wZnNfdDpmaWxlIGdl
dGF0dHI7CgojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCgpyZXF1aXJlIHsKCXR5cGUgdG1wZnNf
dDsKCXR5cGUgYXVkaXRkX3Q7CgljbGFzcyBmaWxlIHNldGF0dHI7Cn0KCiM9PT09PT09PT09PT09
IGF1ZGl0ZF90ID09PT09PT09PT09PT09CmFsbG93IGF1ZGl0ZF90IHRtcGZzX3Q6ZmlsZSBzZXRh
dHRyOwoKCnJlcXVpcmUgewoJdHlwZSB0bXBmc190OwoJdHlwZSBhdWRpdGRfdDsKCWNsYXNzIGRp
ciBvcGVuOwp9CgojPT09PT09PT09PT09PSBhdWRpdGRfdCA9PT09PT09PT09PT09PQphbGxvdyBh
dWRpdGRfdCB0bXBmc190OmRpciBvcGVuOwoKIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwoKcmVx
dWlyZSB7Cgl0eXBlIHRtcGZzX3Q7Cgl0eXBlIGF1ZGl0ZF90OwoJY2xhc3MgZGlyIHJlYWQ7Cn0K
CiM9PT09PT09PT09PT09IGF1ZGl0ZF90ID09PT09PT09PT09PT09CmFsbG93IGF1ZGl0ZF90IHRt
cGZzX3Q6ZGlyIHJlYWQ7CgojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCgpyZXF1aXJlIHsKCXR5
cGUgdG1wZnNfdDsKCXR5cGUgYXVkaXRkX3Q7CgljbGFzcyBkaXIgb3BlbjsKfQoKIz09PT09PT09
PT09PT0gYXVkaXRkX3QgPT09PT09PT09PT09PT0KYWxsb3cgYXVkaXRkX3QgdG1wZnNfdDpkaXIg
b3BlbjsKCgoKcmVxdWlyZSB7Cgl0eXBlIHRtcGZzX3Q7Cgl0eXBlIGluaXRyY190OwoJdHlwZSBh
dWRpdGRfdDsKCWNsYXNzIHVuaXhfZGdyYW1fc29ja2V0IHNlbmR0bzsKCWNsYXNzIGRpciBzZWFy
Y2g7Cn0KCiM9PT09PT09PT09PT09IGF1ZGl0ZF90ID09PT09PT09PT09PT09CmFsbG93IGF1ZGl0
ZF90IGluaXRyY190OnVuaXhfZGdyYW1fc29ja2V0IHNlbmR0bzsKYWxsb3cgYXVkaXRkX3QgdG1w
ZnNfdDpkaXIgc2VhcmNoOwoKCnJlcXVpcmUgewoJdHlwZSB0bXBmc190OwoJdHlwZSBhdWRpdGRf
dDsKCWNsYXNzIGRpciBhZGRfbmFtZTsKfQoKIz09PT09PT09PT09PT0gYXVkaXRkX3QgPT09PT09
PT09PT09PT0KYWxsb3cgYXVkaXRkX3QgdG1wZnNfdDpkaXIgYWRkX25hbWU7CgoKIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIwoKcmVxdWlyZSB7Cgl0eXBlIHRtcGZzX3Q7Cgl0eXBlIGF1ZGl0ZF90
OwoJY2xhc3MgZGlyIHdyaXRlOwp9CgojPT09PT09PT09PT09PSBhdWRpdGRfdCA9PT09PT09PT09
PT09PQphbGxvdyBhdWRpdGRfdCB0bXBmc190OmRpciB3cml0ZTsKCiMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMKCnJlcXVpcmUgewoJdHlwZSB2YXJfcnVuX3Q7Cgl0eXBlIGluaXRfdDsKCXR5cGUg
c3lzbG9nZF90OwoJdHlwZSBzeXN0ZW1kX3RtcGZpbGVzX3Q7Cgl0eXBlIGluaXRyY190OwoJdHlw
ZSBrbG9nZF90OwoJdHlwZSBjaGtwd2RfdDsKCXR5cGUgbG9jYWxfbG9naW5fdDsKCXR5cGUgcHJv
Y190OwoJdHlwZSBnZXR0eV90OwoJdHlwZSB0bXBmc190OwoJdHlwZSBtb3VudF90OwoJY2xhc3Mg
Y2FwYWJpbGl0eTIgYXVkaXRfcmVhZDsKCWNsYXNzIGZpbGUgcmVhZDsKCWNsYXNzIGZpbGVzeXN0
ZW0gZ2V0YXR0cjsKCWNsYXNzIHVuaXhfZGdyYW1fc29ja2V0IHNlbmR0bzsKCWNsYXNzIHNobSBj
cmVhdGU7CgljbGFzcyBkaXIgc2VhcmNoOwp9CgojPT09PT09PT09PT09PSBjaGtwd2RfdCA9PT09
PT09PT09PT09PQphbGxvdyBjaGtwd2RfdCBwcm9jX3Q6ZmlsZXN5c3RlbSBnZXRhdHRyOwoKIz09
PT09PT09PT09PT0gZ2V0dHlfdCA9PT09PT09PT09PT09PQphbGxvdyBnZXR0eV90IHRtcGZzX3Q6
ZGlyIHNlYXJjaDsKCiM9PT09PT09PT09PT09IGluaXRfdCA9PT09PT09PT09PT09PQphbGxvdyBp
bml0X3Qgc2VsZjpjYXBhYmlsaXR5MiBhdWRpdF9yZWFkOwoKIz09PT09PT09PT09PT0ga2xvZ2Rf
dCA9PT09PT09PT09PT09PQoKIyEhISEgVGhpcyBhdmMgaXMgYWxsb3dlZCBpbiB0aGUgY3VycmVu
dCBwb2xpY3kKYWxsb3cga2xvZ2RfdCBpbml0cmNfdDp1bml4X2RncmFtX3NvY2tldCBzZW5kdG87
CgojPT09PT09PT09PT09PSBsb2NhbF9sb2dpbl90ID09PT09PT09PT09PT09CmFsbG93IGxvY2Fs
X2xvZ2luX3QgdmFyX3J1bl90OmZpbGUgcmVhZDsKCiM9PT09PT09PT09PT09IG1vdW50X3QgPT09
PT09PT09PT09PT0KYWxsb3cgbW91bnRfdCBwcm9jX3Q6ZmlsZXN5c3RlbSBnZXRhdHRyOwoKIz09
PT09PT09PT09PT0gc3lzbG9nZF90ID09PT09PT09PT09PT09CmFsbG93IHN5c2xvZ2RfdCBzZWxm
OnNobSBjcmVhdGU7CgojPT09PT09PT09PT09PSBzeXN0ZW1kX3RtcGZpbGVzX3QgPT09PT09PT09
PT09PT0KYWxsb3cgc3lzdGVtZF90bXBmaWxlc190IGluaXRfdDpkaXIgc2VhcmNoOwphbGxvdyBz
eXN0ZW1kX3RtcGZpbGVzX3QgcHJvY190OmZpbGVzeXN0ZW0gZ2V0YXR0cjsKCgojIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjCgpyZXF1aXJlIHsKCXR5cGUgdW5jb25maW5lZF90OwoJdHlwZSBsaWJf
dDsKCWNsYXNzIHNlcnZpY2Ugc3RhdHVzOwp9CgojPT09PT09PT09PT09PSB1bmNvbmZpbmVkX3Qg
PT09PT09PT09PT09PT0KYWxsb3cgdW5jb25maW5lZF90IGxpYl90OnNlcnZpY2Ugc3RhdHVzOwoK
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwoKCnJlcXVpcmUgewoJdHlwZSBpbml0cmNfdDsKCXR5
cGUga2xvZ2RfdDsKCWNsYXNzIHVuaXhfZGdyYW1fc29ja2V0IHNlbmR0bzsKfQoKIz09PT09PT09
PT09PT0ga2xvZ2RfdCA9PT09PT09PT09PT09PQphbGxvdyBrbG9nZF90IGluaXRyY190OnVuaXhf
ZGdyYW1fc29ja2V0IHNlbmR0bzsKCgojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCgpyZXF1aXJl
IHsKCXR5cGUgdW5jb25maW5lZF90OwoJdHlwZSBsaWJfdDsKCWNsYXNzIHNlcnZpY2Ugc3RhcnQ7
Cn0KCiM9PT09PT09PT09PT09IHVuY29uZmluZWRfdCA9PT09PT09PT09PT09PQphbGxvdyB1bmNv
bmZpbmVkX3QgbGliX3Q6c2VydmljZSBzdGFydDsKCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMK
CgpyZXF1aXJlIHsKCXR5cGUgdW5jb25maW5lZF90OwoJdHlwZSBsaWJfdDsKCWNsYXNzIHNlcnZp
Y2Ugc3RvcDsKfQoKIz09PT09PT09PT09PT0gdW5jb25maW5lZF90ID09PT09PT09PT09PT09CmFs
bG93IHVuY29uZmluZWRfdCBsaWJfdDpzZXJ2aWNlIHN0b3A7CgojIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjCg==

--001a1134ede2a060b10536932b6a--
