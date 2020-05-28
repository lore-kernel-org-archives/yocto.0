Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.160])
 by mx.groups.io with SMTP id smtpd.web12.16029.1590683292632057391
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 May 2020 09:28:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kt-elektronik.de header.s=strato-dkim-0002 header.b=h8/pBj2l;
 spf=none, err=permanent DNS error (domain: kt-elektronik.de, ip: 81.169.146.160, mailfrom: cschmidt@kt-elektronik.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1590683291;
	s=strato-dkim-0002; d=kt-elektronik.de;
	h=Date:Message-ID:To:Subject:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
	Subject:Sender;
	bh=0/zS6uES4yhrqKMRSABny14tiHTXS8bWJt7DyRjrovw=;
	b=h8/pBj2l3Ep/1RDSQU6p491Ccl2CHSGI+n8RNSnWbcICnXZG4+Sm4jC4v/RXrlKfWn
	jos5mFHZ2qHWApoI3psm781fVM8Sx2h9JvJy45LSsuUnE9OyTfA7oiu8hi5toEpZFKtr
	/nTSc6nKd9euMnWIWAv/2IIG+iYv+wd3akyHNBG4n8antD8yOcLZMj6zJHjUH7Al7pO7
	GKpkkAVId9BPYaojgSFN1lFzt56y3RqMFPSH/CIjmg0kVa3yCpZLrM0S3V3rOH2sNLVZ
	Z83gA8xDrN26AmqUEl18hgnO+G3axbHjP110H2n5FiTJ/L04PfHJXKJhsaFlHxqH3dCM
	lrpw==
X-RZG-AUTH: ":O2kGeEG7b/pS1EatBnq/jNqHDfD14FSQsSTWti/dppBcJbvTTcxeImli/i5WLD+FGjqwItQ79/O8Dgt6lHzR"
X-RZG-CLASS-ID: mo00
Received: from gate.kt.berlin
	by smtp.strato.de (RZmta 46.9.0 AUTH)
	with ESMTPSA id J090b5w4SGSB3XJ
	(using TLSv1 with cipher AES256-SHA (256 bits))
	(Client did not present a certificate)
	for <yocto@lists.yoctoproject.org>;
	Thu, 28 May 2020 18:28:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by gate.kt.berlin (Postfix) with ESMTP id CDF0A1ECE486;
	Thu, 28 May 2020 18:28:10 +0200 (CEST)
X-Virus-Scanned: amavisd-new at kt.berlin
Received: from gate.kt.berlin ([127.0.0.1])
	by localhost (gate.kt.berlin [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id VhoXzXXXkrR7; Thu, 28 May 2020 18:28:10 +0200 (CEST)
Received: from [192.168.1.119] (unknown [192.168.1.119])
	by gate.kt.berlin (Postfix) with ESMTPS id 9B0A11ECE45D
	for <yocto@lists.yoctoproject.org>; Thu, 28 May 2020 18:28:10 +0200 (CEST)
From: cschmidt@kt-elektronik.de
Subject: debug makefile based c-helloworld application
To: yocto@lists.yoctoproject.org
Message-ID: <7088a561-fa77-23cb-be93-21fb50d8b260@kt-elektronik.de>
Date: Thu, 28 May 2020 18:28:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

I try to debug a simple helloworld program but i can't see the source 
code. My approach:


hello.c

```

#include<stdio.h>

int main() {
   printf("Hello World\n");
   return 0;
}

```

hellome.bb

```

#
# This file was derived from the 'Hello World!' example recipe in the
# Yocto Project Development Manual.
#
SUMMARY = "Simple helloworld application"
LICENSE = "CLOSED"


SRC_URI = "file://hello.c"

S = "${WORKDIR}"

TARGET_CC_ARCH += "${LDFLAGS}"

do_compile() {
   ${CC} hello.c -o -g -O0 hello
}

do_install() {
   install -d ${D}${bindir}
   install -m 0755 hello ${D}${bindir}
}

```

Makefile

```
SOURCES=hello.c
OBJECTS=$(SOURCES:.c=.o)
EXEC=hello

#EXTRACFLAGS=-ansi

all: $(SOURCES) $(EXEC)

$(EXEC): $(OBJECTS)
     $(CC) $(CFLAGS) $(EXTRACFLAGS) $(OBJECTS) -o $@

%.o : %c
     $(CC) $(CFLAGS) $(EXTRACFLAGS) -c $<

install:
     install $(EXEC) $(DESTDIR)/usr/bin

clean:
     rm -rf *.o $(EXEC)
```


local.conf

```

....

IMAGE_INSTALL_append = " hellome hellome-dbg hellome-dev"

EXTRA_IMAGE_FEATURES += "\
       dbg-pkgs \
       tools-debug \
       debug-tweaks \
       dev-pkgs"


# Specifies to build packages with debugging information
DEBUG_BUILD = "1"

# Do not remove debug symbols
INHIBIT_PACKAGE_STRIP = "1"

```


on the target:

```

root@qemuarm:~# hello
Hello World

root@qemuarm:~# gdb /usr/bin/hello

Reading symbols from /usr/bin/hello...
(gdb) b main
Breakpoint 1 at 0x518
(gdb) r
Starting program: /usr/bin/hello

Breakpoint 1, 0x00400518 in main ()
(gdb) list
1       longjmp.c: No such file or directory.
(gdb) list 1
file: "../setjmp/longjmp.c", line number: 1, symbol: "???"
1       ../setjmp/longjmp.c: No such file or directory.
file: "longjmp.c", line number: 1, symbol: "???"
1       longjmp.c: No such file or directory.
```


