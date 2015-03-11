Return-Path: <prashantpurohit025@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76388E00779; Wed, 11 Mar 2015 05:16:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (prashantpurohit025[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42807E0076F
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 05:15:58 -0700 (PDT)
Received: by pablj1 with SMTP id lj1so10968722pab.10
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 05:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=M/Gf0oBHKz/2HBYDqJeBPkU9s0/5jGicFvJj5BtvZsI=;
	b=rpU3FUnBOZUtF7Fa5IvZ0xsRKiAfPSEqYuLIJZzB6tdnqX0BYqv56LkbVyPC10xXAS
	Zv1zvcQuEu3oduoVPqn9xedL3A5g/ZTbfQeYEBSFksBsWuZ+zuXddSQN5uRWP9uo8WLi
	GORfREuaDv6nMcCSj275OmB+e0Y8b/VBT3l4iHzNhQNZFAdfAxg3RIUAyJMS7Bx4UVgk
	V/wom6JmQkqbT/61MPAqWewsZ8bw2+Hd91snL+Kp9DeDR6FqdRspcNA2dFO0BvzTDAUj
	niOnspOm6mfqkkHKuJnnh02yo2YtICqqMnU/Bd2Av1t0KZSit8+V2P53ciU0Qa6pHhIE
	sZUw==
MIME-Version: 1.0
X-Received: by 10.67.7.135 with SMTP id dc7mr78424829pad.140.1426076158504;
	Wed, 11 Mar 2015 05:15:58 -0700 (PDT)
Received: by 10.70.85.36 with HTTP; Wed, 11 Mar 2015 05:15:58 -0700 (PDT)
Date: Wed, 11 Mar 2015 17:45:58 +0530
Message-ID: <CACmjmczPApw1=6jkV7wGgqjqxtti8qGppp8k_Bus-1D8Fa+gaw@mail.gmail.com>
From: Prashant Purohit <prashantpurohit025@gmail.com>
To: yocto@yoctoproject.org
Subject: : Build error while building armeb image.
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
X-List-Received-Date: Wed, 11 Mar 2015 12:16:01 -0000
X-Groupsio-MsgNum: 23964
Content-Type: multipart/mixed; boundary=001a1133c5a0daa7bc0511023a39

--001a1133c5a0daa7bc0511023a39
Content-Type: multipart/alternative; boundary=001a1133c5a0daa7b80511023a37

--001a1133c5a0daa7b80511023a37
Content-Type: text/plain; charset=UTF-8

Hi,

I am trying to boot kernel image for 'armv7ab' using QEMU.

To do the same, I have included the 'tune-arma7.inc'
(/meta/conf/machine/include/
arm/arch-armv7a.inc) and configured DEFAULTTUNE variable to 'armv7ab'.
But I am not able to build the image for it. I am getting error (compiled
for a little endian system and target is big endian) while compiling kernel
image.

The log for the same is attached with this mail.
Has anyone faced the same issue previously or has any inputs for it?

Thanks,
Prashant

--001a1133c5a0daa7b80511023a37
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br></div><br>I am trying to boot kernel image for=
 &#39;armv7ab&#39; using QEMU.<br><br>To do the same, I have included the &=
#39;tune-arma7.inc&#39; (/meta/conf/machine/include/<div>arm/arch-armv7a.in=
c) and configured DEFAULTTUNE variable to &#39;armv7ab&#39;.<br></div>But I=
 am not able to build the image for it. I am getting error (compiled for a =
little endian system and target is big endian) while compiling kernel image=
.<br><div><br>The log for the same is attached with this mail.<br><div>Has =
anyone faced the same issue previously or has any inputs for it?<br></div><=
br></div><div>Thanks,<br></div><div>Prashant</div></div>

--001a1133c5a0daa7b80511023a37--

--001a1133c5a0daa7bc0511023a39
Content-Type: text/x-log; charset=US-ASCII; name="Error_armeb.log"
Content-Disposition: attachment; filename="Error_armeb.log"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_i74owy4k0

TG9nIGRhdGEgZm9sbG93czoKCnwgREVCVUc6IEV4ZWN1dGluZyBzaGVsbCBmdW5jdGlvbiBkb19j
b21waWxlCgp8IE5PVEU6IG1ha2UgLWogNDAgekltYWdlIENDPWFybWViLXBva3ktbGludXgtZ251
ZWFiaS1nY2MgICBMRD1hcm1lYi1wb2t5LWxpbnV4LWdudWVhYmktbGQuYmZkCgp8ICAgR0VOICAg
ICAvaG9tZS9wcmFzaGFudC9wb2t5L2J1aWxkX2FybS90bXAvd29yay9xZW11YXJtLXBva3ktbGlu
dXgtZ251ZWFiaS9saW51eC15b2N0by8zLjE0LjI5K2dpdEFVVE9JTkMrNmVkZGJmNDc4N18xYTlm
OWVkYWRlLXIwL2xpbnV4LXFlbXVhcm0tc3RhbmRhcmQtYnVpbGQvTWFrZWZpbGUKCnwgc2NyaXB0
cy9rY29uZmlnL2NvbmYgLS1zaWxlbnRvbGRjb25maWcgS2NvbmZpZwoKfCAgIENISyAgICAgaW5j
bHVkZS9jb25maWcva2VybmVsLnJlbGVhc2UKCnwgICBVc2luZyAvaG9tZS9wcmFzaGFudC9wb2t5
L2J1aWxkX2FybS90bXAvd29yay1zaGFyZWQvcWVtdWFybS9rZXJuZWwtc291cmNlIGFzIHNvdXJj
ZSBmb3Iga2VybmVsCgp8ICAgR0VOICAgICAvaG9tZS9wcmFzaGFudC9wb2t5L2J1aWxkX2FybS90
bXAvd29yay9xZW11YXJtLXBva3ktbGludXgtZ251ZWFiaS9saW51eC15b2N0by8zLjE0LjI5K2dp
dEFVVE9JTkMrNmVkZGJmNDc4N18xYTlmOWVkYWRlLXIwL2xpbnV4LXFlbXVhcm0tc3RhbmRhcmQt
YnVpbGQvTWFrZWZpbGUKCnwgICBDSEsgICAgIGluY2x1ZGUvZ2VuZXJhdGVkL3VhcGkvbGludXgv
dmVyc2lvbi5oCgp8ICAgQ0hLICAgICBpbmNsdWRlL2dlbmVyYXRlZC91dHNyZWxlYXNlLmgKCnwg
ICBHZW5lcmF0aW5nIGluY2x1ZGUvZ2VuZXJhdGVkL21hY2gtdHlwZXMuaAoKfCAgIENDICAgICAg
a2VybmVsL2JvdW5kcy5zCgp8ICAgR0VOICAgICBpbmNsdWRlL2dlbmVyYXRlZC9ib3VuZHMuaAoK
fCAgIENDICAgICAgYXJjaC9hcm0va2VybmVsL2FzbS1vZmZzZXRzLnMKCnwgICBHRU4gICAgIGlu
Y2x1ZGUvZ2VuZXJhdGVkL2FzbS1vZmZzZXRzLmgKCnwgICBDQUxMICAgIC9ob21lL3ByYXNoYW50
L3Bva3kvYnVpbGRfYXJtL3RtcC93b3JrLXNoYXJlZC9xZW11YXJtL2tlcm5lbC1zb3VyY2Uvc2Ny
aXB0cy9jaGVja3N5c2NhbGxzLnNoCgp8ICAgSE9TVENDICBzY3JpcHRzL2thbGxzeW1zCgp8ICAg
SE9TVENDICBzY3JpcHRzL2JpbjJjCgp8ICAgSE9TVENDICBzY3JpcHRzL2Nvbm1ha2VoYXNoCgp8
ICAgSE9TVENDICBzY3JpcHRzL3JlY29yZG1jb3VudAoKfCAgIEhPU1RDQyAgc2NyaXB0cy9zb3J0
ZXh0YWJsZQoKfCAgIENDICAgICAgc2NyaXB0cy9tb2QvZW1wdHkubwoKfCAgIEhPU1RDQyAgc2Ny
aXB0cy9tb2QvbWtfZWxmY29uZmlnCgp8ICAgQ0MgICAgICBzY3JpcHRzL21vZC9kZXZpY2V0YWJs
ZS1vZmZzZXRzLnMKCnwgICBNS0VMRiAgIHNjcmlwdHMvbW9kL2VsZmNvbmZpZy5oCgp8ICAgR0VO
ICAgICBzY3JpcHRzL21vZC9kZXZpY2V0YWJsZS1vZmZzZXRzLmgKCnwgICBIT1NUQ0MgIHNjcmlw
dHMvbW9kL21vZHBvc3QubwoKfCAgIEhPU1RDQyAgc2NyaXB0cy9tb2Qvc3VtdmVyc2lvbi5vCgp8
ICAgSE9TVENDICBzY3JpcHRzL21vZC9maWxlMmFsaWFzLm8KCnwgICBIT1NUTEQgIHNjcmlwdHMv
bW9kL21vZHBvc3QKCnwgICBDSEsgICAgIGluY2x1ZGUvZ2VuZXJhdGVkL2NvbXBpbGUuaAoKfCAg
IENDICAgICAgaW5pdC9tYWluLm8KCnwgICBDQyAgICAgIGluaXQvZG9fbW91bnRzLm8KCnwgICBD
QyAgICAgIGluaXQvZG9fbW91bnRzX3JkLm8KCnwgICBDQyAgICAgIGluaXQvZG9fbW91bnRzX2lu
aXRyZC5vCgp8ICAgQ0MgICAgICBpbml0L2RvX21vdW50c19tZC5vCgp8ICAgQ0MgICAgICBpbml0
L2NhbGlicmF0ZS5vCgp8ICAgQ0MgICAgICBpbml0L2luaXRyYW1mcy5vCgp8ICAgQ0MgICAgICBp
bml0L2luaXRfdGFzay5vCgp8ICAgVVBEICAgICBpbmNsdWRlL2dlbmVyYXRlZC9jb21waWxlLmgK
CnwgICBDQyAgICAgIGluaXQvdmVyc2lvbi5vCgp8ICAgTEQgICAgICBpbml0L21vdW50cy5vCgp8
IGFybWViLXBva3ktbGludXgtZ251ZWFiaS1sZC5iZmQ6IGluaXQvZG9fbW91bnRzLm86IGNvbXBp
bGVkIGZvciBhIGxpdHRsZSBlbmRpYW4gc3lzdGVtIGFuZCB0YXJnZXQgaXMgYmlnIGVuZGlhbgoK
fCBhcm1lYi1wb2t5LWxpbnV4LWdudWVhYmktbGQuYmZkOiBmYWlsZWQgdG8gbWVyZ2UgdGFyZ2V0
IHNwZWNpZmljIGRhdGEgb2YgZmlsZSBpbml0L2RvX21vdW50cy5vCgp8IGFybWViLXBva3ktbGlu
dXgtZ251ZWFiaS1sZC5iZmQ6IGluaXQvZG9fbW91bnRzX3JkLm86IGNvbXBpbGVkIGZvciBhIGxp
dHRsZSBlbmRpYW4gc3lzdGVtIGFuZCB0YXJnZXQgaXMgYmlnIGVuZGlhbgoKfCBhcm1lYi1wb2t5
LWxpbnV4LWdudWVhYmktbGQuYmZkOiBmYWlsZWQgdG8gbWVyZ2UgdGFyZ2V0IHNwZWNpZmljIGRh
dGEgb2YgZmlsZSBpbml0L2RvX21vdW50c19yZC5vCgp8IGFybWViLXBva3ktbGludXgtZ251ZWFi
aS1sZC5iZmQ6IGluaXQvZG9fbW91bnRzX2luaXRyZC5vOiBjb21waWxlZCBmb3IgYSBsaXR0bGUg
ZW5kaWFuIHN5c3RlbSBhbmQgdGFyZ2V0IGlzIGJpZyBlbmRpYW4KCnwgYXJtZWItcG9reS1saW51
eC1nbnVlYWJpLWxkLmJmZDogZmFpbGVkIHRvIG1lcmdlIHRhcmdldCBzcGVjaWZpYyBkYXRhIG9m
IGZpbGUgaW5pdC9kb19tb3VudHNfaW5pdHJkLm8KCnwgYXJtZWItcG9reS1saW51eC1nbnVlYWJp
LWxkLmJmZDogaW5pdC9kb19tb3VudHNfbWQubzogY29tcGlsZWQgZm9yIGEgbGl0dGxlIGVuZGlh
biBzeXN0ZW0gYW5kIHRhcmdldCBpcyBiaWcgZW5kaWFuCgp8IGFybWViLXBva3ktbGludXgtZ251
ZWFiaS1sZC5iZmQ6IGZhaWxlZCB0byBtZXJnZSB0YXJnZXQgc3BlY2lmaWMgZGF0YSBvZiBmaWxl
IGluaXQvZG9fbW91bnRzX21kLm8KCnwgL2hvbWUvcHJhc2hhbnQvcG9reS9idWlsZF9hcm0vdG1w
L3dvcmstc2hhcmVkL3FlbXVhcm0va2VybmVsLXNvdXJjZS9zY3JpcHRzL01ha2VmaWxlLmJ1aWxk
OjQ0MTogcmVjaXBlIGZvciB0YXJnZXQgJ2luaXQvbW91bnRzLm8nIGZhaWxlZAoKfCBtYWtlWzNd
OiAqKiogW2luaXQvbW91bnRzLm9dIEVycm9yIDEKCnwgL2hvbWUvcHJhc2hhbnQvcG9reS9idWls
ZF9hcm0vdG1wL3dvcmstc2hhcmVkL3FlbXVhcm0va2VybmVsLXNvdXJjZS9NYWtlZmlsZTo4NDM6
IHJlY2lwZSBmb3IgdGFyZ2V0ICdpbml0JyBmYWlsZWQKCnwgbWFrZVsyXTogKioqIFtpbml0XSBF
cnJvciAyCgp8IE1ha2VmaWxlOjEzMzogcmVjaXBlIGZvciB0YXJnZXQgJ3N1Yi1tYWtlJyBmYWls
ZWQKCnwgbWFrZVsxXTogKioqIFtzdWItbWFrZV0gRXJyb3IgMgoKfCBNYWtlZmlsZToyNjogcmVj
aXBlIGZvciB0YXJnZXQgJ2FsbCcgZmFpbGVkCgp8IG1ha2U6ICoqKiBbYWxsXSBFcnJvciAyCgp8
IEVSUk9SOiBvZV9ydW5tYWtlIGZhaWxlZAoKfCBXQVJOSU5HOiAvaG9tZS9wcmFzaGFudC9wb2t5
L2J1aWxkX2FybS90bXAvd29yay9xZW11YXJtLXBva3ktbGludXgtZ251ZWFiaS9saW51eC15b2N0
by8zLjE0LjI5K2dpdEFVVE9JTkMrNmVkZGJmNDc4N18xYTlmOWVkYWRlLXIwL3RlbXAvcnVuLmRv
X2NvbXBpbGUuNjczMToxIGV4aXQgMSBmcm9tCgp8ICAgZXhpdCAxCgp8IEVSUk9SOiBGdW5jdGlv
biBmYWlsZWQ6IGRvX2NvbXBpbGUgKGxvZyBmaWxlIGlzIGxvY2F0ZWQgYXQgL2hvbWUvcHJhc2hh
bnQvcG9reS9idWlsZF9hcm0vdG1wL3dvcmsvcWVtdWFybS1wb2t5LWxpbnV4LWdudWVhYmkvbGlu
dXgteW9jdG8vMy4xNC4yOStnaXRBVVRPSU5DKzZlZGRiZjQ3ODdfMWE5ZjllZGFkZS1yMC90ZW1w
L2xvZy5kb19jb21waWxlLjY3MzEpCgpFUlJPUjogVGFzayA3OSAoL2hvbWUvcHJhc2hhbnQvcG9r
eS9tZXRhL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXlvY3RvXzMuMTQuYmIsIGRvX2NvbXBp
bGUpIGZhaWxlZCB3aXRoIGV4aXQgY29kZSAnMScK

--001a1133c5a0daa7bc0511023a39--
