#ifndef __OBJECT_H
#define __OBJECT_H

typedef enum {
	OBJECT_TYPE_ID_TYPE = 0x00,
	OBJECT_TYPE_ID_KEY_EVENT = 0x01,
	OBJECT_TYPE_ID_SBUS_STATUS,
	OBJECT_TYPE_ID_GAMEPAD_STATUS,
}ObjectTypeIDEnum;

/* 物件型別結構 */
typedef struct _ObjectType {
    ObjectTypeIDEnum type_id;   // 物件類型 ID
    const char *type_name;      // 物件名稱（可選）
} ObjectType;

/* 通用物件結構（所有物件的基底） */
typedef struct {
    ObjectType *type;           // 指向物件型別資訊
} ObjectTypeDef;


#endif


