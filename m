Return-Path: <alan.martinovic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E42A0E00BA2; Fri,  1 Nov 2019 13:45:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alan.martinovic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
	[209.85.208.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92185E00805
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 13:45:06 -0700 (PDT)
Received: by mail-lj1-f194.google.com with SMTP id 139so11546140ljf.1
	for <yocto@yoctoproject.org>; Fri, 01 Nov 2019 13:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=MSOSQyyqHyuswgz1cDk+zQjOauqf3PT61mc3K2r/pCE=;
	b=gFVSovRaXQwfSICPcg794bMZXVltiCjsqihTAcp96NY0Vb0QqaP71ykUV2yT9jXit+
	paV8U3TmX3WUvxcAtw02eARTlTbHyS5kKVNdAueQXxjcMnazHY7CuKwiRf/cJDsqGhUm
	5vHZLkmx/SRG3LJk1HomeWruclKAslUuzKqwwlefIfRxpwOz7Ov0Q4xA6pi9gWNBPlZN
	cxULZZhIGM9I4Fvb6Qr50sYqEdso4Q/RPJ6JjsynZgOnLGhEfyb7CJ9GRoAzC9+pYqje
	T0GnR0RpVuQ0L0UXdKZ8iZ/MAcawjt1BFjKLPHi25uXVknpU+iBewKTxZxN4kX/t91jz
	OmVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=MSOSQyyqHyuswgz1cDk+zQjOauqf3PT61mc3K2r/pCE=;
	b=AwCHsNzVC23l0fP6R52kjn8T11TlGMlIq5ViBSt4OqMiGIgMZRqSHI1RvAc8uJdXjK
	r11IqdCP5oDoLkns11csXj1Rd2XkDG+xnBSAsjfeQYbxdFHJGhYWL5Rfo3T+LVdtEk5T
	Pu3YwMLt4ei16W1msfFBlVWi1gnULUgaVTqWXZPbd8tMMpqI8qqPsSmqCFGypMfkXiKu
	EHgFJWVwTixpyKPTZEfX56ZQlh3rB05lV8jDYV+lCnBBqBLUiCosJvSr7h5BdN9Eh/g8
	3IoX37iYEMyc0TUSikOXDw2Yp5kagumHoXn5UOnnXoIv8LUapIEO/Rxd/QhAP23aUXby
	8bKQ==
X-Gm-Message-State: APjAAAWNEWehqLRuT9VxzrSar1IG8KXiZnCoAWBLGrvronoILw7+rDOO
	3TKyuLO+o5wiyatguev+NAbRRM/Deo8TSPLcTbcNv3f4IMw=
X-Google-Smtp-Source: APXvYqzY/SFkksq/YVKNwV+n4KOVCeUH09P8L4N2Tb/7cYgwdFcknV/+gYcHpWvBUEwYHk46MXA0hLfWJJwAX1YKtf4=
X-Received: by 2002:a2e:8505:: with SMTP id j5mr9415160lji.154.1572641104951; 
	Fri, 01 Nov 2019 13:45:04 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Alan_Martinovi=C4=87?= <alan.martinovic@gmail.com>
Date: Fri, 1 Nov 2019 21:44:53 +0100
Message-ID: <CAHTPtPFJqQnPrH3WwKetfU8GN3YD6okYK=R-HyMPzQ9Ym44JTA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Debugging custom python code in recipes
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
X-List-Received-Date: Fri, 01 Nov 2019 20:45:09 -0000
Content-Type: text/plain; charset="UTF-8"

Hey,
there was a question today about options for debugging python scripts in yocto.
I've patched up this PoC for remote debugging.

If someone finds it useful (it should be copy-pastable), feel free to
ping me back.
Am opet to shaping it into a friendlier format and discover potential issues.


```
# epdb is a python debugger which has a capability of attaching to breakpoints
# on running daemons. Install it on the host.
pip3 install epdb

git clone -b zeus git://git.yoctoproject.org/poky.git
cd poky

# Create a example .inc file in a random location
cat > meta/recipes-core/images/python-debug-example.inc << "EOF"
python () {

    # Import the epdb installed on the host
    import epdb
    random_action = 3

    # Set the breakpoint.
    # This will stop the program and open a channel to connect to the
interactive debugger
    epdb.serve()
    some_other_action = 5
    another_action = 6
}
EOF


# Add the .inc file to an arbitrary image
# Triggering the image build, the python code will be executed
# and the breakpoint reached
cat >> meta/recipes-core/images/core-image-minimal.bb << EOF
require python-debug-example.inc
EOF

source oe-init-build-env
# This will block because of the breakpoint
bitbake core-image-minimal

# Open a new terminal and connect to the debugger
python3 -c "import epdb; epdb.connect()"

# You should see something like...
# (Epdb) l
#  5         random_action = 3
#  6
#  7         # Set the breakpoint.
#  8         # This will stop the program and open a channel to
connect to the interactive debugger
#  9         epdb.serve()
# 10  ->     some_other_action = 5
# 11         another_action = 6
# 12     }
#[EOF]

# ... which is the interactive python debugger
```

Be Well,
Alan

