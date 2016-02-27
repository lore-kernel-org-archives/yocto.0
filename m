Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A17C2E00E0E; Sat, 27 Feb 2016 07:27:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.44 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f44.google.com (mail-qg0-f44.google.com
	[209.85.192.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C41D2E00DFA
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:12 -0800 (PST)
Received: by mail-qg0-f44.google.com with SMTP id y89so86673994qge.2
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=v0GTeuSMTaJ2yAeqfqSkECcpU77D+Vvo7bUIcFi8CtQ=;
	b=xXZtIRunuv5a6bjnfIkai61RStSh835dssRr1wraNkmAaslPSsIxPzVeA5UZSN1SDC
	SJ/XnVseEC+/QnD0JuEJyBOtxW5dJjdIng1F3VhRPemXef6G3PWzhw+b9NVV0UcodCtv
	0h4I/a7UpjzFv8FZUoByCEQmbmH56iqHaIULqhb2f4R9UYnw6G1/K3rhj6wOrXOgVgsN
	jFmLHvERnM/ot2x62OQLTeThXVuO1VMpbqqpUGcLULrU8ZL/yddk2x6NccnUPe/tF2LG
	/SwKW34o83C3DnfClZ0Y7jR/IFuD+kuxBYjECVsmdej3uQo0ANWrpTBtui2wsPjZ8GYu
	C06Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=v0GTeuSMTaJ2yAeqfqSkECcpU77D+Vvo7bUIcFi8CtQ=;
	b=lGirC17vO38MGw0D2XmAVQ2Cq+XqrGCXgpjdOydXM0GwM0dvy6wA58t/w8xpFQzU7/
	dkd4OlnFM2IUSO9ITjnhWjcayk6ZrV4QnhZfp7g6LMxeIOyl5+1MdEzIRCwxfSw0idip
	ijY0YS8SkvA3BdoLRQino3ILnU8/2hyXtEJSQdh8t5daNZopzc8tDggy8UNqK2mvA0iW
	UOgtNKhbEuOIyLzDjPKTMByN32mG03Qzr3JUOaOLAidOfpgXp+eA2z6/ee4Gj534wN4P
	0F2TqhTDB9hQSzw4kK36bbHyKTy4ugmpk8HDbcXwSLmV9Y2XJgriHD/yfzeot5dIEYIe
	eJPw==
X-Gm-Message-State: AD7BkJI4LVGnBu8AH+Bok6QCoLOW+aLkclq0YsgsxyGNoWc/mj2mO8kZz9Sda145NzjSHA==
X-Received: by 10.140.176.19 with SMTP id w19mr9437888qhw.59.1456586832237;
	Sat, 27 Feb 2016 07:27:12 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:11 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:26:44 +0000
Message-Id: <32219e252e4d937bbd0964fc3d5f4c4b5e54a970.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 05/23] rpi-gpio: Upgrade to 0.6.1 and fix build with clang
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
X-List-Received-Date: Sat, 27 Feb 2016 15:27:25 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../rpi-gpio/0001-Remove-nested-functions.patch    | 294 +++++++++++++++++++++
 .../{rpi-gpio_0.5.11.bb => rpi-gpio_0.6.1.bb}      |   6 +-
 2 files changed, 298 insertions(+), 2 deletions(-)
 create mode 100644 recipes-devtools/python/rpi-gpio/0001-Remove-nested-functions.patch
 rename recipes-devtools/python/{rpi-gpio_0.5.11.bb => rpi-gpio_0.6.1.bb} (70%)

diff --git a/recipes-devtools/python/rpi-gpio/0001-Remove-nested-functions.patch b/recipes-devtools/python/rpi-gpio/0001-Remove-nested-functions.patch
new file mode 100644
index 0000000..bd97179
--- /dev/null
+++ b/recipes-devtools/python/rpi-gpio/0001-Remove-nested-functions.patch
@@ -0,0 +1,294 @@
+From 23d7ab77865f8b17042f5cd4c6720cca475e0eb5 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Wed, 13 Jan 2016 14:27:10 -0800
+Subject: [PATCH] Remove nested functions
+
+nested functions are not supported on llvm/clang compiler, replacing
+them helps make code portable and be compilable with non-gcc compilers
+additionally fix the diagnostic messages clang reported
+
+source/c_gpio.c:130:18: warning: comparison of distinct pointer types
+('volatile uint32_t *' (aka 'volatile unsigned int *') an
+d 'void *') [-Wcompare-distinct-pointer-types]
+    if (gpio_map < MAP_FAILED)
+        ~~~~~~~~ ^ ~~~~~~~~~~
+
+        source/c_gpio.c:89:13: warning: variable 'peri_base' is used
+uninitialized whenever 'if' condition is false [-Wsometimes-uninit
+ialized]
+        if (fread(buf, 1, sizeof buf, fp) == sizeof buf) {
+            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+source/c_gpio.c:116:17: note: uninitialized use occurs here
+    gpio_base = peri_base + GPIO_BASE_OFFSET;
+                ^~~~~~~~~
+source/c_gpio.c:89:9: note: remove the 'if' if its condition is always
+true
+        if (fread(buf, 1, sizeof buf, fp) == sizeof buf) {
+        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+source/c_gpio.c:64:23: note: initialize the variable 'peri_base' to
+silence this warning
+    uint32_t peri_base;
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+Upstream-Status: Submitted
+
+ source/c_gpio.c  |   6 +--
+ source/py_gpio.c | 135 ++++++++++++++++++++++++++++---------------------------
+ 2 files changed, 71 insertions(+), 70 deletions(-)
+
+diff --git a/source/c_gpio.c b/source/c_gpio.c
+index c96a2b0..b69880f 100644
+--- a/source/c_gpio.c
++++ b/source/c_gpio.c
+@@ -61,7 +61,7 @@ int setup(void)
+ {
+     int mem_fd;
+     uint8_t *gpio_mem;
+-    uint32_t peri_base;
++    uint32_t peri_base = 0;
+     uint32_t gpio_base;
+     unsigned char buf[4];
+     FILE *fp;
+@@ -73,7 +73,7 @@ int setup(void)
+     if ((mem_fd = open("/dev/gpiomem", O_RDWR|O_SYNC)) > 0)
+     {
+         gpio_map = (uint32_t *)mmap(NULL, BLOCK_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, mem_fd, 0);
+-        if ((uint32_t)gpio_map < 0) {
++        if (gpio_map == MAP_FAILED) {
+             return SETUP_MMAP_FAIL;
+         } else {
+             return SETUP_OK;
+@@ -127,7 +127,7 @@ int setup(void)
+ 
+     gpio_map = (uint32_t *)mmap( (void *)gpio_mem, BLOCK_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED|MAP_FIXED, mem_fd, gpio_base);
+ 
+-    if ((uint32_t)gpio_map < 0)
++    if (gpio_map == MAP_FAILED)
+         return SETUP_MMAP_FAIL;
+ 
+     return SETUP_OK;
+diff --git a/source/py_gpio.c b/source/py_gpio.c
+index d54cc7f..007bad5 100644
+--- a/source/py_gpio.c
++++ b/source/py_gpio.c
+@@ -69,6 +69,20 @@ static int mmap_gpio_mem(void)
+       return 0;
+    }
+ }
++static inline int cleanup_one(unsigned int gpio)
++{
++   // clean up any /sys/class exports
++   event_cleanup(gpio);
++
++   // set everything back to input
++   if (gpio_direction[gpio] != -1) {
++      setup_gpio(gpio, INPUT, PUD_OFF);
++      gpio_direction[gpio] = -1;
++      return 1;
++   }
++   return 0;
++}
++
+ 
+ // python function cleanup(channel=None)
+ static PyObject *py_cleanup(PyObject *self, PyObject *args, PyObject *kwargs)
+@@ -83,19 +97,6 @@ static PyObject *py_cleanup(PyObject *self, PyObject *args, PyObject *kwargs)
+    PyObject *tempobj;
+    static char *kwlist[] = {"channel", NULL};
+ 
+-   void cleanup_one(void)
+-   {
+-      // clean up any /sys/class exports
+-      event_cleanup(gpio);
+-
+-      // set everything back to input
+-      if (gpio_direction[gpio] != -1) {
+-         setup_gpio(gpio, INPUT, PUD_OFF);
+-         gpio_direction[gpio] = -1;
+-         found = 1;
+-      }
+-   }
+-
+    if (!PyArg_ParseTupleAndKeywords(args, kwargs, "|O", kwlist, &chanlist))
+       return NULL;
+ 
+@@ -140,7 +141,7 @@ static PyObject *py_cleanup(PyObject *self, PyObject *args, PyObject *kwargs)
+       } else if (channel != -666) {    // channel was an int indicating single channel
+          if (get_gpio_number(channel, &gpio))
+             return NULL;
+-         cleanup_one();
++         found = cleanup_one(gpio);
+       } else {  // channel was a list/tuple
+          for (i=0; i<chancount; i++) {
+             if (chanlist) {
+@@ -169,7 +170,7 @@ static PyObject *py_cleanup(PyObject *self, PyObject *args, PyObject *kwargs)
+ 
+             if (get_gpio_number(channel, &gpio))
+                return NULL;
+-            cleanup_one();
++            found = cleanup_one(gpio);
+          }
+       }
+    }
+@@ -182,6 +183,37 @@ static PyObject *py_cleanup(PyObject *self, PyObject *args, PyObject *kwargs)
+    Py_RETURN_NONE;
+ }
+ 
++static inline int setup_one(unsigned int *gpio, int channel, int pud, int direction, int initial) {
++   if (get_gpio_number(channel, gpio))
++      return 0;
++
++   int func = gpio_function(*gpio);
++   if (gpio_warnings &&                             // warnings enabled and
++       ((func != 0 && func != 1) ||                 // (already one of the alt functions or
++       (gpio_direction[*gpio] == -1 && func == 1)))  // already an output not set from this program)
++   {
++      PyErr_WarnEx(NULL, "This channel is already in use, continuing anyway.  Use GPIO.setwarnings(False) to disable warnings.", 1);
++   }
++
++   // warn about pull/up down on i2c channels
++   if (gpio_warnings) {
++      if (rpiinfo.p1_revision == 0) { // compute module - do nothing
++      } else if ((rpiinfo.p1_revision == 1 && (*gpio == 0 || *gpio == 1)) ||
++                 (*gpio == 2 || *gpio == 3)) {
++         if (pud == PUD_UP || pud == PUD_DOWN)
++            PyErr_WarnEx(NULL, "A physical pull up resistor is fitted on this channel!", 1);
++      }
++   }
++
++   if (direction == OUTPUT && (initial == LOW || initial == HIGH)) {
++      output_gpio(*gpio, initial);
++   }
++   setup_gpio(*gpio, direction, pud);
++   gpio_direction[*gpio] = direction;
++   return 1;
++}
++
++
+ // python function setup(channel(s), direction, pull_up_down=PUD_OFF, initial=None)
+ static PyObject *py_setup_channel(PyObject *self, PyObject *args, PyObject *kwargs)
+ {
+@@ -195,37 +227,6 @@ static PyObject *py_setup_channel(PyObject *self, PyObject *args, PyObject *kwar
+    int pud = PUD_OFF + PY_PUD_CONST_OFFSET;
+    int initial = -1;
+    static char *kwlist[] = {"channel", "direction", "pull_up_down", "initial", NULL};
+-   int func;
+-
+-   int setup_one(void) {
+-      if (get_gpio_number(channel, &gpio))
+-         return 0;
+-
+-      func = gpio_function(gpio);
+-      if (gpio_warnings &&                             // warnings enabled and
+-          ((func != 0 && func != 1) ||                 // (already one of the alt functions or
+-          (gpio_direction[gpio] == -1 && func == 1)))  // already an output not set from this program)
+-      {
+-         PyErr_WarnEx(NULL, "This channel is already in use, continuing anyway.  Use GPIO.setwarnings(False) to disable warnings.", 1);
+-      }
+-
+-      // warn about pull/up down on i2c channels
+-      if (gpio_warnings) {
+-         if (rpiinfo.p1_revision == 0) { // compute module - do nothing
+-         } else if ((rpiinfo.p1_revision == 1 && (gpio == 0 || gpio == 1)) ||
+-                    (gpio == 2 || gpio == 3)) {
+-            if (pud == PUD_UP || pud == PUD_DOWN)
+-               PyErr_WarnEx(NULL, "A physical pull up resistor is fitted on this channel!", 1);
+-         }
+-      }
+-
+-      if (direction == OUTPUT && (initial == LOW || initial == HIGH)) {
+-         output_gpio(gpio, initial);
+-      }
+-      setup_gpio(gpio, direction, pud);
+-      gpio_direction[gpio] = direction;
+-      return 1;
+-   }
+ 
+    if (!PyArg_ParseTupleAndKeywords(args, kwargs, "Oi|ii", kwlist, &chanlist, &direction, &pud, &initial))
+       return NULL;
+@@ -290,7 +291,7 @@ static PyObject *py_setup_channel(PyObject *self, PyObject *args, PyObject *kwar
+    } else if (chantuple) {
+        chancount = PyTuple_Size(chantuple);
+    } else {
+-       if (!setup_one())
++       if (!setup_one(&gpio, channel, pud, direction, initial))
+           return NULL;
+        Py_RETURN_NONE;
+    }
+@@ -320,12 +321,29 @@ static PyObject *py_setup_channel(PyObject *self, PyObject *args, PyObject *kwar
+           return NULL;
+       }
+ 
+-      if (!setup_one())
++      if (!setup_one(&gpio, channel, pud, direction, initial))
+          return NULL;
+    }
+ 
+    Py_RETURN_NONE;
+ }
++static inline int output_val(unsigned int *gpio, int channel, int value) {
++   if (get_gpio_number(channel, gpio))
++       return 0;
++
++   if (gpio_direction[*gpio] != OUTPUT)
++   {
++      PyErr_SetString(PyExc_RuntimeError, "The GPIO channel has not been set up as an OUTPUT");
++      return 0;
++   }
++
++   if (check_gpio_priv())
++      return 0;
++
++   output_gpio(*gpio, value);
++   return 1;
++}
++
+ 
+ // python function output(channel(s), value(s))
+ static PyObject *py_output_gpio(PyObject *self, PyObject *args)
+@@ -342,23 +360,6 @@ static PyObject *py_output_gpio(PyObject *self, PyObject *args)
+    int chancount = -1;
+    int valuecount = -1;
+ 
+-   int output(void) {
+-      if (get_gpio_number(channel, &gpio))
+-          return 0;
+-
+-      if (gpio_direction[gpio] != OUTPUT)
+-      {
+-         PyErr_SetString(PyExc_RuntimeError, "The GPIO channel has not been set up as an OUTPUT");
+-         return 0;
+-      }
+-
+-      if (check_gpio_priv())
+-         return 0;
+-
+-      output_gpio(gpio, value);
+-      return 1;
+-   }
+-
+    if (!PyArg_ParseTuple(args, "OO", &chanlist, &valuelist))
+        return NULL;
+ 
+@@ -416,7 +417,7 @@ static PyObject *py_output_gpio(PyObject *self, PyObject *args)
+    }
+ 
+    if (chancount == -1) {
+-      if (!output())
++      if (!output_val(&gpio, channel, value))
+          return NULL;
+       Py_RETURN_NONE;
+    }
+@@ -472,7 +473,7 @@ static PyObject *py_output_gpio(PyObject *self, PyObject *args)
+               return NULL;
+           }
+       }
+-      if (!output())
++      if (!output_val(&gpio, channel, value))
+          return NULL;
+    }
+ 
+-- 
+2.7.0
+
diff --git a/recipes-devtools/python/rpi-gpio_0.5.11.bb b/recipes-devtools/python/rpi-gpio_0.6.1.bb
similarity index 70%
rename from recipes-devtools/python/rpi-gpio_0.5.11.bb
rename to recipes-devtools/python/rpi-gpio_0.6.1.bb
index bca31cc..89f601b 100644
--- a/recipes-devtools/python/rpi-gpio_0.5.11.bb
+++ b/recipes-devtools/python/rpi-gpio_0.6.1.bb
@@ -8,12 +8,14 @@ SRCNAME = "RPi.GPIO"
 
 SRC_URI = "\
           http://pypi.python.org/packages/source/R/RPi.GPIO/${SRCNAME}-${PV}.tar.gz \
+          file://0001-Remove-nested-functions.patch \
           "
+SRC_URI[md5sum] = "254d0443a436eb241367c487274e7197"
+SRC_URI[sha256sum] = "54e5fb06d9ea1a1389a497fb5a06dfa950c86303b0f4ba89b68c55999d1df064"
+
 S = "${WORKDIR}/${SRCNAME}-${PV}"
 
 inherit distutils
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-SRC_URI[md5sum] = "9dc3dab6ce2b7ccb833a866efb392821"
-SRC_URI[sha256sum] = "8d6f02da7f90e24512ad80ee4ccf34ef33687c88c47326f100cf7ac4d7ae4bf3"
-- 
1.9.1


