Return-Path: <JK.Behnke@web.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0812E00D38; Fri,  1 Nov 2019 02:11:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jk.behnke[at]web.de)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Nov 2019 02:11:39 PDT
Received: from mout.web.de (mout.web.de [212.227.15.4])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9258E0097D
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 02:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
	s=dbaedf251592; t=1572599498;
	bh=sKwyH4wmCW5c4xveaR55LzRAYQ5egP22ZwIz7TJ3By4=;
	h=X-UI-Sender-Class:From:To:Subject:Date;
	b=AppZSLJWPbzW8Xei0tINKrnI22e33qHfrpcLRMwspJOh3ddO3lZ5YJb5J0bTt6Wsj
	5HMG8DO/pX1IgQ1FsBISLlZY7fkma6zJtGQz0zDrACK1dsrzEokfNFvdWkwdBvgGlj
	9rz/SdwpkY+M1IiobPEQPJv56NL8n0zLLqik4soc=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [93.234.10.162] ([93.234.10.162]) by web-mail.web.de
	(3c-app-webde-bs43.server.lan [172.19.170.43]) (via HTTP);
	Fri, 1 Nov 2019 10:06:36 +0100
MIME-Version: 1.0
Message-ID: <trinity-9c767986-f846-4e0a-9b8c-834746d6fc80-1572599196046@3c-app-webde-bs43>
From: JK.Behnke@web.de
To: yocto@yoctoproject.org
Date: Fri, 1 Nov 2019 10:06:36 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:qQui2L/p+95yq6EcZ9pzjE9qfdvf4OXPwwCDIfxtXy2wjCXoDQyhBEhUw3waeEDENYjyK
	4djzgJHOUKe6YsELsjHCCfe2J17YnUWkuv4jLUdIbilJM2wBkaZx1RIdnB89KbFXP4pYaCYsrRFB
	PpWFzfNPpZpgJq++DjE4lW9WTcIc6SY5oWPy+qUIakZ7SIgeTJDoqfhKvoQt6yk96BZgLxGe4k3L
	+aw9L5v9NyOvtxKZfv3s5h2Mc6NQ0v2RhEPL7WriORfl9hCuNcCN7iiZMvHQa8TYT+01Ne3tNs/S
	qM=
X-UI-Out-Filterresults: notjunk:1;V03:K0:45bUov9VrEA=:PhZ/m7ZGvouMvZ3hDT8+I4
	uWppFqJSpUdAKs15AwTfOUvUQkWLD/+biYsfS2HB8mlSvl6maLW17rmvxIPwUzwiwOZfkRkfl
	VOMZ7ghlxAGQ0jyej8nFLZt/JLxS0oz4uxSFbKsMGYZMgmeead7fDdph+K/hV56hiUGydF/y0
	lum9dy5XziCQkIKflkt3S1R1f32pW64tEmfwSqMwpyfBuc4q1ZC8sQwmuS18BvLMRB49ax+LN
	c7oJFKUne8QDZ5sht4421BpK9pawQA6wdGqe/gp595QKAU4DVLHbHF56c0zr39n1H1H/cfsKE
	0d5w2v8OqikdhFGIn1Q0/F3/rFS6Zkx15nnJR3nk3f/uLsIMpOTnRoJIknroLOCuep8xHOjqe
	oA5CV04/FUZ4S8Z5zwrnEcvlS6b62l7A/1H6gH3yMruHTfjA6fKHg1K/VwKv29Wo9XjmNPqJy
	IxCBZeyJ+wNovfT8g7minTzQntmiHiLeetWcd8Bwbk7Q6mqo1Bpw1VTZyisOy23NwaELHG6tY
	52or8KmHwpSqfmLmQVuzE0wEy9YsGRFqVUJSjaGMLayZZGJgJ0B4vLXbkawq9SxKEq/2jK0WB
	5WTLMfcSkC+qrsX6AT4vhuWqOiGxHQ/3qfEfUZ59J+5yt8etMo0sDGOGQLgUlE0Vzv5Kiu8HG
	s32neWrGIblv2sPuFMK18Dp61/3YXjBKk9fdyDGPqZLBNQg==
Subject: poky thud: qtscript fails to build with undefined reference to `cti_vm_throw'
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
X-List-Received-Date: Fri, 01 Nov 2019 09:11:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,
=C2=A0
I tried to build a poky SDK with QT5 support (I am using poky thud)=2E
Unfortunately this failed while bitbaking qtscript=2E
When executing "bitbake qtscript" directly I get the same error=2E
=C2=A0
Here are the IMHO relevant lines of the huge log=2Edo_compile file=2E
I have replaced the long paths by <=2E=2E=2E> for clarity=2E
=C2=A0
-- multiple warnings ---
=2E=2E=2E=C2=A0 warning: 'template<class> class std::auto_ptr' is deprecat=
ed [-Wdeprecated-declarations]
---

-- warning ---
In member function 'allocatePropertyStorageInline',
=C2=A0 =C2=A0 inlined from 'allocatePropertyStorage' at <=2E=2E=2E>/git/sr=
c/3rdparty/javascriptcore/JavaScriptCore/runtime/JSObject=2Ecpp:546:34:
<=2E=2E=2E>/git/src/3rdparty/javascriptcore/JavaScriptCore/runtime/JSObjec=
t=2Eh:679:68: warning: argument 1 value '4294967295' exceeds maximum object=
 size 2147483647 [-Walloc-size-larger-than=3D]
=C2=A0 =C2=A0 =C2=A0PropertyStorage newPropertyStorage =3D new EncodedJSVa=
lue[newSize];
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ^
<=2E=2E=2E>/git/src/3rdparty/javascriptcore/JavaScriptCore/runtime/JSObjec=
t=2Eh: In member function 'allocatePropertyStorage':
<=2E=2E=2E>/recipe-sysroot/usr/include/c++/8=2E2=2E0/new:122:7: note: in a=
 call to allocation function 'operator new []' declared here
=C2=A0void* operator new[](std::size_t) _GLIBCXX_THROW (std::bad_alloc)
---
=C2=A0
--- error ---
<=2E=2E=2E>/recipe-sysroot-native/usr/bin/i686-poky-linux/=2E=2E/=2E=2E/li=
bexec/i686-poky-linux/gcc/i686-poky-linux/8=2E2=2E0/ld: <=2E=2E=2E>/recipe-=
sysroot-native/usr/bin/i686-poky-linux/=2E=2E/=2E=2E/libexec/i686-poky-linu=
x/gcc/i686-poky-linux/8=2E2=2E0/ld: DWARF error: invalid abstract instance =
DIE ref
/tmp/ccSwzRoN=2Eltrans0=2Eltrans=2Eo: in function `ctiVMThrowTrampoline':
<artificial>:(=2Etext+0x1f): undefined reference to `cti_vm_throw'
collect2: error: ld returned 1 exit status
Makefile:666: recipe for target '=2E=2E/=2E=2E/lib/libQt5Script=2Eso=2E5=
=2E12=2E2' failed
---
=C2=A0
Has anyone an idea what could be the problem?
=C2=A0
Thanks
Jochen

